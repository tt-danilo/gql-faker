![GraphQL Faker logo](./docs/faker-logo-text.png)

# GraphQL Faker
## To-Do
- [x] L10 GQL Queries
- [] L10 Mutation queries

## Development

```sh
yarn
npm run build:all
npm run start
```



## GRAPGQL QUERIES
# Get List of L10 Meetings
```
query getAttendeesData {
  meeting(meetingType: "L10") {
  	Id
    MeetingType
    Basics {
      Name
    }
  }
}
```

# Get Rocks Data
```
query getRocksData {
  meeting {
    Rocks {
      Id
      Type
      Key
      Name
      DueDate
      Complete
      Completion
      CreateTime
      Archived
      Owner {
        Id
        Type
        Key
        Name
        ImageUrl
      }
      Permission {
        CanEdit
      }
      Origins {
        Id
        Name
      }
    }
  }
}
```

# Get Attendees Data
```
query getAttendeesData {
  meeting {
  	Attendees {
  	  Id
  	  Type
  	  Key
  	  Name
  	  ImageUrl
  	}
  }
}
```

# Get a list of issues for a Level 10 meeting
```
query getIssuesList {
  meeting(Id: 123) {
  	IssuesList {
  	  Id
  	  Type
  	  Key
  	  Prioritization
      Issues {
        Name
        Id
        Type
        Key
        DetailsUrl
        Complete
        CreateTime
        CloseTime
        Origin
        OriginId
      }
  	}
  }
}
```

# Get a list of to-dos in a Level 10 meeting
```
query getTodosData {
  meeting(Id: 123) {
  	Todos {
  	  Id
  	  Type
  	  Key
  	  Name
  	  DetailsUrl
  	  Origin
  	  OriginId
  	  DueDate
  	  CompleteTime
  	  CreateTime
  	  Complete
  	  TodoType
  	  Ordering
      Owner {
        Id
        Type
        Key
        Name
        ImageUrl
      }
      Permission {
        CanEdit
      }
  	}
  }
}
```

# Get a list of people headlines in a Level 10 meeting
```
query getHeadlinesData {
  meeting {
    HeadlinesUrl
    HeadlineType
  	Headlines {
  	  Id
  	  Type
  	  Key
  	  Name
  	  DetailsUrl
  	  CloseTime
  	  CreateTime
  	  Archived
  	  Origin
  	  OriginId
      Owner {
        Id
        Type
        Key
        Name
        ImageUrl
      }
      Permission {
        CanEdit
      }
  	}
  }
}
```

# Get a list of measurables in a Level 10 meeting
```
query getMeasurables {
  meeting {
    Scorecard {
      Measurables {
        Name
        Id
        Type
        Key
        Target
        AltTarget
        Direction
        IsDivider
        IsReorderable
        ShowCumulative
        Cumulative
        CumulativeRange
        Modifiers
        Ordering
        Disabled
        Generated
        IsFormula
        Average
        ShowAverage
        AverageRange
        Permission {
          CanEdit
        }
      }
      MeasurableOrder {
        Id
        Type
        ScorecardId
        MeasurableId
        Ordering
        Key
      }
    }
  }
}
```