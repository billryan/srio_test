                                       

                    Core Name: Xilinx Serial RapidIO
                    Version: 5.4
                    Release Date: September 16, 2009


================================================================================

This document contains the following sections:

1. Introduction
2. New Features
3. Resolved Issues
4. Known Issues
5. Technical Support
6. Other Information (optional)
7. Core Release History

================================================================================

1. INTRODUCTION

For the most recent updates to the IP installation instructions for this core,
please go to:

   http://www.xilinx.com/ipcenter/coregen/ip_update_install_instructions.htm


For system requirements:

   http://www.xilinx.com/ipcenter/coregen/ip_update_system_requirements.htm 



This file contains release notes for the Xilinx LogiCORE Serial RapidIO v5.4
solution. For the latest core updates, see the product page at:

   http://www.xilinx.com/rapidio/


2. NEW FEATURES

   - 11.3 Tool Support
   - Spartan-6 Verilog support
   - Updated Virtex-6 functionality for initial board bring-up


3. RESOLVED ISSUES

   - Virtex-6 bring-up issues
      - Version fixed : v5.4 (pending further testing)
      - CR#527725, CR#525309, CR#531695 - Using integer values for the MMCM_ADV,
        regenerated Virtex-6 wrappers based on general hardware characterization
        results, revised reset sequence. Please see core Release Notes 
        for updates.

   - GUI settings incorrect or not properly reflected in hardware.
      - Version fixed : v5.4
      - CR#507334, CR#528369, CR#528370 / AR#32122 - The following register 
        fields were corrected: Re-transmit Suppression mask, Logical Layer 
        extended features pointer, DeviceVendorID.

   - Latches inferred in VHDL example design
      - Version fixed: v5.2
      - CR#509670 / AR#32189 - Added intermediate values for partial 
        register and combinational assignments.

   - lnk_trdy_n does not assert in evaluation core simulations
      - Version fixed : v5.1rev1
      - CR#493479 / AR#31864 - modified initial state in evaluation cores.

   - PHY won't generate stand-alone due to missing module
      - Version fixed : v5.1rev1
      - CR#493162 / AR#31834 - Shared file between buffer and log added to 
        buffer file list.

   - Virtex-4 core has long initialization time
      - Version fixed : v5.1rev1
      - CR#481684 / AR#31617 - Virtex-4 initSM modified to prevent branch to
        silent when RX PCS resets in DISCOVERY state.

   - LogIO local arbitration doesn't account for valid causing re-arbitration
     prior to legitimatepacket completion.
      - Version fixed : v5.1
      - CR#478748 - Valid used to gate mresp_eof_n and iresp_eof_n for local
        arbitration.

   - A ireq_dsc_n asserted for an undefined packet type does not get propogated
     by the logical layer.
      - Version fixed : v5.1
      - CR#478541 - undefined packet type decode now passes dsc to buffer
        allowing packet to be dropped.

   - 16-bit deviceID cores may see a maintenance response transaction presented
     but not validated on the IResp interface resulting in a lost transaction.
     by the logical layer.
      - Version fixed : v5.1
      - CR#474894 - Fixed issue when the maintenance response is followed
        immediatly by a single DWord SWrite packet.

   - SourceID not configureable for IReq port.
      - Version fixed : v5.1
      - CR#473938 - Added ireq_src_id port to logical layer. All transmit source 
        IDs should now be configureable and all received destination IDs 
        observable.

   - Write enables into LogIO registers aren't allowing partial register writes.
      - Version fixed : v5.1
      - CR#473441 - Write enables now implementedfor all LogIO registers allowing
        byte-wise writes of CSRs such as the deviceID register and BAR.

   - Message response transaction received as a user defined packet type using
     16-bit device IDs appears as a corrupted packet on the IResp interface.
      - Version fixed : v5.1
      - CR#473400, CR#473693 - Fixed LogIO RX to properly handle all 
        user-defined types.

   - PHY core does not dsc upon retry when coincident with TX packet eof
     resulting in potential buffer lock-up
      - Version fixed : v4.4rev2
      - CR#478246 / AR#31407 - lnk_tdst_dsc_n now asserted for all retry and
        error scenarios.

   - Retry of packet being sent causes packet to get stuck in buffer
      - Version fixed : v4.4rev2
      - CR#477217 / AR#31318 - No longer applicable, v5.1 introduces new buffer.

   - Core accepts muddled packet when reinitializing during packet receipt
      - Version fixed : v4.4rev1
      - CR#477115 / AR#31308 - Core PNAs packet in receipt when link goes down.

   - Core LCSBA implementation removes 64MB of possible addressing space.
      - Version fixed : v4.4
      - CR#472992 / AR#30939 - Use 10-bit mask with full 34-bit address for
        LCSBA intercept.

   - CRC error on stalled packet
      - Version fixed : v4.4
      - CR#469678 / AR#30940 - Fixed condition which loaded in new CRC sequence
        on a stall just after sof received by PHY. This is a non-concern for 
        Xilinx buffer users.

   - Virtex-4 4x core may intermittenly train down to 1x mode
      - Version fixed : v4.4
      - CR#467616 / AR#30314 - Modified oplm_pcs_rst_sequence.v file supplied
        with the core to register asynchronous TXLOCK and RXLOCK signals.

   - Re-initialization not forced following a change to Port Width Override
      - Version fixed : v4.4
      - CR#459427 / AR#30323 - Modified PHY Layer to detect a change in the
        port width override field and reinitialize when updated.

   - Messaging packets providing incorrect treq_byte_count value
      - Version fixed : v4.4
      - CR#467116 / AR#30320 - Modified Logical Layer to properly decode
        Messaging size field. Modified testbench to properly check byte
        count for messaging type packets.

   - 8-bit SWrite transactions usign 16-bit deviceIDs suffer lost eofs
      - Version fixed : v4.4
      - CR#467668 / AR#30322 - Modified Logical Layer to properly forward
        eof through the pipeline.

   - Some Logical Layer CARs are not being set correctly in the core.
      - Version fixed : v4.4
      - CR#458414 / AR#30054 - The following Logical Layer CARs are not being
        set correctly in the core:
        - Assembly Information CAR (offset 0xC) - ExtendedFeaturesPtr portion
        - Processing Element Features CAR (offset 0x10)
        - Switch Port Information CAR (offset 0x14)
        - Destination Operations CAR (offset 0x1C)
        - Switch Route Table Destination ID Limit CAR (offset 0x34)

   - Core does not have functionality to enable the user to drop unintended
     packets based on Device ID.
      - Version fixed: v4.3.
      - CR#455552 - Added a new port called deviceid which indicates the
        current Device ID value stored in the Base Device ID CSR.

   - Receive side buffer design may corrupt packets - user may see corrupted
     packets from the logical layer when many small packets cause the status
     FIFO to fill.
      - Version fixed: v4.2
      - CR#447884 / AR#29263 - No longer applicable, v5.1 introduces new buffer.

   - Repeated, transmitted packet accepted control symbols referencing the
     same AckID cause loss of AckID sync - The user will see this as
     potentially duplicated received packets which ultimately result in a port
     error condition.
      - Version fixed: v4.2
      - CR#444561 / AR#29233 - Modified the transmit encoder to send a single
        packet accepted symbol per back-to-back control symbol.

   - Stomped packet sent after RFR (Restart-from-Retry)control symbol -
     The user will occasionally see error recovery on a retry which will affect
     system bandwidth.
      - Version fixed: v4.2
      - CR#435188 / AR#24837 - Modified the PHY interface to kill a packet if
        discontinued on eof and prevent entry to the buffer.


4. KNOWN ISSUES

   The following are known issues for v5.4 of this core at the time of release:

   - Virtex-6 and Spartan-6 solutions are pending hardware validation.

   - Virtex-5 GTX clock compensation logic may corrupt post 8b/10b data.
      - Version to be fixed : 5.5
      - CR#510781 / AR#32188 - This is an issue within the clock compensation 
        logic internal to the GTX transceivers please reference the above AR
        for fabric patches or workarounds.

   - PHY does not properly pass CRF bit to Buffer
      - Version to be fixed : 5.5
      - CR#519603 / AR#32614 - Please reference the Answer Record for additional
        information and recommendations.

   - Virtex-4 FXT 3.125G, 4x core may not meet timing.
      - Version to be fixed : 5.5
      - CR#506364 / AR#32195 - Please reference the Answer Record for additional
        information and recommendations.

   - Unable to traindown to x1 mode in Lane 2.
      - Version to be fixed : Fix Not Scheduled
      - CR#457109 / AR#30023 - Traindown in Lane 0 works successfully but the
        Serial RapidIO endpoint is unable to traindown to Lane 2. The RocketIO 
        transceivers only allow traindown to the channel bonding master.

   - Core reinitialization during error recovery causes recoverable protocol
     error.
      - Version to be fixed : Fix Not Scheduled
      - CR#457885 / AR#30021 - This is an corner condition that could occur if
        core is forced to reinitialize (i.e. - force_reinit) while it is in the
        process of error recovery. If this condition occurs, packets will be
        sent during recovery's quiet period. This situation is recoverable.

   - Post-Synplicity synthesis implementation runs may exhibit ucf failures
      - Version to be fixed : Fix Not Scheduled
      - CR#447782 / AR#29522 - Synplicity generated net names are not
        consistent with XST generated names and may not be consistent between
        core types. The .ucf file must be edited in these failure cases. Please
        reference the Serial RapidIO v5.1 web Release Notes for suggested work
        around.

   - PNA cause field may occasionally reflect a reserved value
      - Version to be fixed : Fix Not Scheduled
      - CR#436767 / AR#24982 - The cause field is for debug purposes only
        and will not affect functionality. Occurrence is rare and requires
        alignment of multiple control symbols.

   - Control Symbols may be lost on reinit
      - Version to be fixed : Fix Not Scheduled
      - CR#436768 / AR#24970 - This is an unusual and ultimately recoverable
        error. Set the "Additional Link Request Before Fatal" value on the
        Physical Configuration page of the GUI to "4" in order to prevent a
        lost Link Request or Link Response from causing the core to enter
        the port error state.

   - Logical Rx does not support core side stalls
      - Version to be fixed : Fix Not Scheduled
      - CR#436770 / AR#24968 - The rx buffer must provide packets to the
        logical layer without buffer induced stall cycles. The buffer
        reference design provided with the core is a store and forward
        buffer and complies with this rule.

  The most recent information, including known issues, workarounds, and
  resolutions for this version is provided in the release notes Answer Record
  for the ISE 11.3i IP Update at

     http://www.xilinx.com/support/documentation/user_guides/xtp025.pdf


5. TECHNICAL SUPPORT

   To obtain technical support, create a WebCase at www.xilinx.com/support.
   Questions are routed to a team with expertise using this product.

   Xilinx provides technical support for use of this product when used
   according to the guidelines described in the core documentation, and
   cannot guarantee timing, functionality, or support of this product for
   designs that do not follow specified guidelines.


6. OTHER INFORMATION

   N/A

7. CORE RELEASE HISTORY

Date        By            Version         Description
================================================================================
09/2009     Xilinx, Inc.  5.4             Spartan-6 support
06/2009     Xilinx, Inc.  5.3             Virtex-6 support
04/2009     Xilinx, Inc.  5.2             11.1i support
11/2008     Xilinx, Inc.  5.1 Revision 1  Patch Release
09/2008     Xilinx, Inc.  5.1             New Buffer LogiCore
07/2008     Xilinx, Inc.  4.4 Revision 2  Patch Release
07/2008     Xilinx, Inc.  4.4 Revision 1  Patch Release
06/2008     Xilinx, Inc.  4.4             Bug Fixes
03/2008     Xilinx, Inc.  4.3             10.1i support
10/2007     Xilinx, Inc.  4.2             9.2i support
02/2007     Xilinx, Inc.  4.1             9.1i support
02/2006     Xilinx, Inc.  3.1 Revision 1  Patch Release
01/2006     Xilinx, Inc.  3.1             8.1i support
================================================================================


(c) 2002-2009 Xilinx, Inc. All Rights Reserved.


XILINX, the Xilinx logo, and other designated brands included herein are
trademarks of Xilinx, Inc. All other trademarks are the property of their
respective owners.

Xilinx is disclosing this user guide, manual, release note, and/or
specification (the Documentation) to you solely for use in the development
of designs to operate with Xilinx hardware devices. You may not reproduce,
distribute, republish, download, display, post, or transmit the Documentation
in any form or by any means including, but not limited to, electronic,
mechanical, photocopying, recording, or otherwise, without the prior written
consent of Xilinx. Xilinx expressly disclaims any liability arising out of
your use of the Documentation.  Xilinx reserves the right, at its sole
discretion, to change the Documentation without notice at any time. Xilinx
assumes no obligation to correct any errors contained in the Documentation, or
to advise you of any corrections or updates. Xilinx expressly disclaims any
liability in connection with technical support or assistance that may be
provided to you in connection with the information. THE DOCUMENTATION IS
DISCLOSED TO YOU AS-IS WITH NO WARRANTY OF ANY KIND. XILINX MAKES NO
OTHER WARRANTIES, WHETHER EXPRESS, IMPLIED, OR STATUTORY, REGARDING THE
DOCUMENTATION, INCLUDING ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE, OR NONINFRINGEMENT OF THIRD-PARTY RIGHTS. IN NO EVENT
WILL XILINX BE LIABLE FOR ANY CONSEQUENTIAL, INDIRECT, EXEMPLARY, SPECIAL, OR
INCIDENTAL DAMAGES, INCLUDING ANY LOSS OFDATA OR LOST PROFITS, ARISING FROM
YOUR USE OF THE DOCUMENTATION.

