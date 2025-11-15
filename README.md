# BAM! (Bill's Application Manager)

**BAM!** is a powerful PowerShell script designed to simplify and automate various Microsoft Exchange administration tasks. It provides a menu-driven interface to manage Exchange properties, mailbox permissions, statistics, and special delivery configurations.

## Description

The `bam.ps1` script is a comprehensive tool for Exchange administrators. It allows you to perform a wide range of tasks, from querying Exchange schema versions to bulk-creating user mailboxes. The script is designed to be interactive, prompting the user for necessary information and providing clear output. All operations are logged to a custom Windows Application Event Log (`BAMex`) for auditing and troubleshooting.

## Features

BAM! offers a rich set of features, organized into several menus:

### Exchange System Properties
- **Schema Versions**: Retrieve Active Directory and Exchange schema versions.
- **Server Versions**: Get the admin display versions of all Exchange servers.
- **Message Volume Stats**: Write message volume statistics to the event log.
- **Daily Message Volume**: Append daily message volume statistics to a text file (`DailyStats.txt`).

### Mailbox Permissions
- **Full Access**: Report on who has full access to specified mailboxes.
- **Send On Behalf**: Report on who has "Send On Behalf" permissions for specified mailboxes.
- **Send As**: Report on who has "Send As" permissions for specified mailboxes.

### Mailbox Statistics
- **Message Counts & Sizes**: Get the total message count and size for specified mailboxes.
- **Folder Statistics**: Get message counts and sizes for each folder within a mailbox.
- **Calendar Statistics**: Get the item count and size of calendar folders.
- **Bulk Mailbox Creation**: Create user mailboxes in bulk from a CSV file.

### Special Delivery
- **Dual Delivery**: Configure mailboxes for dual delivery (forwarding to an external address while keeping a copy in the original mailbox).
- **Split Delivery**: Configure mailboxes for split delivery (forwarding to an external address without keeping a copy).
- **Delivery Restrictions**: Set up and manage delivery restrictions for mailboxes.
- **Reporting**: Generate reports on special delivery configurations.

### Exporting
- **Export to PST**: Export mailbox data to PST files in bulk.

## Prerequisites

- **Windows PowerShell**: The script is designed to run in a Windows PowerShell environment.
- **Microsoft Exchange Management Shell**: The script requires the Exchange Management Shell modules to be available and loaded.
- **Active Directory Module**: The script requires the Active Directory module for PowerShell.
- **Permissions**: You will need appropriate administrative permissions in both Active Directory and your Exchange organization to run this script successfully.

## Usage

1.  **Launch the Script**: Open a PowerShell console with the necessary Exchange and Active Directory modules loaded and run the script:
    ```powershell
    .\bam.ps1
    ```
2.  **Connect to Exchange**: The script will prompt you to enter the Fully Qualified Domain Name (FQDN) of your Exchange Mailbox server to establish a remote PowerShell session.
3.  **Navigate the Menus**: Use the numbered menus to select the task you want to perform. The script will guide you through the required inputs for each task.
4.  **Provide Input Files**: Many functions require a list of users or mailboxes. You will be prompted to provide the path to a CSV or text file containing this information.
5.  **Review Output**: The script will display the progress of operations on the screen and save detailed reports as CSV files in the script's directory.

## Disclaimer

This script is provided as-is. The author is not responsible for any damage or data loss that may result from its use. Always test scripts in a non-production environment before deploying them in a live environment.

## Author Information

-   **Author**: Bill Reed
-   **Email**: wreed@appirio.com
-   **Company**: Appirio, Inc.
-   **Date**: Feb 6, 2014
