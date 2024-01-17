# Project Name: Time Tracker

## Overview

The Time Tracker project is a Dart script designed to analyze time-tracking data stored in a CSV file and generate a summary of total hours spent on different activities. This tool is useful for individuals or teams who want to gain insights into how time is distributed across various tasks.

## Usage

To use the Time Tracker script, follow these steps:

1. Clone the repository to your local machine.
2. Ensure that Dart is installed on your system.
3. Open a terminal and navigate to the project directory.
4. Run the script by providing the input CSV file as a command-line argument:

```bash
dart totals.dart <input.csv>
```

Replace `<input.csv>` with the path to your time-tracking data in CSV format.

## Input Format

The input CSV file is expected to have the following columns:

1. Activity Tag - Describes the type of activity.
2. Duration - Represents the time spent on the activity.


Make sure your CSV file adheres to this format for accurate results.

## Output

The Time Tracker script generates a summary of total hours spent on each activity, including an overall total. The output is displayed in the following format:

```
Activity1: X.Xh
Activity2: Y.Yh
...
Total Time: Z.Zh
```

## Example

```
Blogging: 62.9h
Flutter Firebase Course: 393.9h
Unallocated: 52.4h
YouTube Production: 166.0h
Community engagement: 54.5h
Development: 83.1h
Promotion: 25.2h
Website / Setup: 66.2h
BizDev / Sponsors: 2.0h
Analytics / Growth: 14.7h
Admin: 1.6h
Client Leads: 1.7h
Total Time: 924.2h
```

## Contributing

If you find any issues or have suggestions for improvement, feel free to open an issue or submit a pull request. Your contributions are highly appreciated.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code as per the terms of the license.

Happy tracking!