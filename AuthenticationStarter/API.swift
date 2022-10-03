//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateMyModelTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(description: String? = nil, title: String? = nil) {
    graphQLMap = ["description": description, "title": title]
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct DeleteMyModelTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct UpdateMyModelTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
    graphQLMap = ["description": description, "id": id, "title": title]
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct TableMyModelTypeFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(description: TableStringFilterInput? = nil, id: TableIDFilterInput? = nil, title: TableStringFilterInput? = nil) {
    graphQLMap = ["description": description, "id": id, "title": title]
  }

  public var description: TableStringFilterInput? {
    get {
      return graphQLMap["description"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: TableStringFilterInput? {
    get {
      return graphQLMap["title"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beginsWith: String? = nil, between: [String?]? = nil, contains: String? = nil, eq: String? = nil, ge: String? = nil, gt: String? = nil, le: String? = nil, lt: String? = nil, ne: String? = nil, notContains: String? = nil) {
    graphQLMap = ["beginsWith": beginsWith, "between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beginsWith: GraphQLID? = nil, between: [GraphQLID?]? = nil, contains: GraphQLID? = nil, eq: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ne: GraphQLID? = nil, notContains: GraphQLID? = nil) {
    graphQLMap = ["beginsWith": beginsWith, "between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public final class CreateMyModelTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMyModelType($input: CreateMyModelTypeInput!) {\n  createMyModelType(input: $input) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var input: CreateMyModelTypeInput

  public init(input: CreateMyModelTypeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMyModelType", arguments: ["input": GraphQLVariable("input")], type: .object(CreateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMyModelType: CreateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMyModelType": createMyModelType.flatMap { $0.snapshot }])
    }

    public var createMyModelType: CreateMyModelType? {
      get {
        return (snapshot["createMyModelType"] as? Snapshot).flatMap { CreateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMyModelType")
      }
    }

    public struct CreateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class DeleteMyModelTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMyModelType($input: DeleteMyModelTypeInput!) {\n  deleteMyModelType(input: $input) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var input: DeleteMyModelTypeInput

  public init(input: DeleteMyModelTypeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMyModelType", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMyModelType: DeleteMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMyModelType": deleteMyModelType.flatMap { $0.snapshot }])
    }

    public var deleteMyModelType: DeleteMyModelType? {
      get {
        return (snapshot["deleteMyModelType"] as? Snapshot).flatMap { DeleteMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMyModelType")
      }
    }

    public struct DeleteMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class UpdateMyModelTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMyModelType($input: UpdateMyModelTypeInput!) {\n  updateMyModelType(input: $input) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var input: UpdateMyModelTypeInput

  public init(input: UpdateMyModelTypeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyModelType", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMyModelType: UpdateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMyModelType": updateMyModelType.flatMap { $0.snapshot }])
    }

    public var updateMyModelType: UpdateMyModelType? {
      get {
        return (snapshot["updateMyModelType"] as? Snapshot).flatMap { UpdateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMyModelType")
      }
    }

    public struct UpdateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class GetMyModelTypeQuery: GraphQLQuery {
  public static let operationString =
    "query GetMyModelType($id: ID!) {\n  getMyModelType(id: $id) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMyModelType", arguments: ["id": GraphQLVariable("id")], type: .object(GetMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMyModelType: GetMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMyModelType": getMyModelType.flatMap { $0.snapshot }])
    }

    public var getMyModelType: GetMyModelType? {
      get {
        return (snapshot["getMyModelType"] as? Snapshot).flatMap { GetMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMyModelType")
      }
    }

    public struct GetMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class ListMyModelTypesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMyModelTypes($filter: TableMyModelTypeFilterInput, $limit: Int, $nextToken: String) {\n  listMyModelTypes(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      description\n      id\n      title\n    }\n    nextToken\n  }\n}"

  public var filter: TableMyModelTypeFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableMyModelTypeFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMyModelTypes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMyModelTypes: ListMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMyModelTypes": listMyModelTypes.flatMap { $0.snapshot }])
    }

    public var listMyModelTypes: ListMyModelType? {
      get {
        return (snapshot["listMyModelTypes"] as? Snapshot).flatMap { ListMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMyModelTypes")
      }
    }

    public struct ListMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelTypeConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelTypeConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MyModelType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
          self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }
      }
    }
  }
}

public final class OnCreateMyModelTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMyModelType($description: String, $id: ID, $title: String) {\n  onCreateMyModelType(description: $description, id: $id, title: $title) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var description: String?
  public var id: GraphQLID?
  public var title: String?

  public init(description: String? = nil, id: GraphQLID? = nil, title: String? = nil) {
    self.description = description
    self.id = id
    self.title = title
  }

  public var variables: GraphQLMap? {
    return ["description": description, "id": id, "title": title]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMyModelType", arguments: ["description": GraphQLVariable("description"), "id": GraphQLVariable("id"), "title": GraphQLVariable("title")], type: .object(OnCreateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMyModelType: OnCreateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMyModelType": onCreateMyModelType.flatMap { $0.snapshot }])
    }

    public var onCreateMyModelType: OnCreateMyModelType? {
      get {
        return (snapshot["onCreateMyModelType"] as? Snapshot).flatMap { OnCreateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMyModelType")
      }
    }

    public struct OnCreateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class OnCreateMyModelTypeV2Subscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMyModelTypeV2 {\n  onCreateMyModelTypeV2 {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMyModelTypeV2", type: .object(OnCreateMyModelTypeV2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMyModelTypeV2: OnCreateMyModelTypeV2? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMyModelTypeV2": onCreateMyModelTypeV2.flatMap { $0.snapshot }])
    }

    public var onCreateMyModelTypeV2: OnCreateMyModelTypeV2? {
      get {
        return (snapshot["onCreateMyModelTypeV2"] as? Snapshot).flatMap { OnCreateMyModelTypeV2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMyModelTypeV2")
      }
    }

    public struct OnCreateMyModelTypeV2: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class OnDeleteMyModelTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMyModelType($description: String, $id: ID, $title: String) {\n  onDeleteMyModelType(description: $description, id: $id, title: $title) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var description: String?
  public var id: GraphQLID?
  public var title: String?

  public init(description: String? = nil, id: GraphQLID? = nil, title: String? = nil) {
    self.description = description
    self.id = id
    self.title = title
  }

  public var variables: GraphQLMap? {
    return ["description": description, "id": id, "title": title]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMyModelType", arguments: ["description": GraphQLVariable("description"), "id": GraphQLVariable("id"), "title": GraphQLVariable("title")], type: .object(OnDeleteMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMyModelType: OnDeleteMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMyModelType": onDeleteMyModelType.flatMap { $0.snapshot }])
    }

    public var onDeleteMyModelType: OnDeleteMyModelType? {
      get {
        return (snapshot["onDeleteMyModelType"] as? Snapshot).flatMap { OnDeleteMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMyModelType")
      }
    }

    public struct OnDeleteMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class OnUpdateMyModelTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMyModelType($description: String, $id: ID, $title: String) {\n  onUpdateMyModelType(description: $description, id: $id, title: $title) {\n    __typename\n    description\n    id\n    title\n  }\n}"

  public var description: String?
  public var id: GraphQLID?
  public var title: String?

  public init(description: String? = nil, id: GraphQLID? = nil, title: String? = nil) {
    self.description = description
    self.id = id
    self.title = title
  }

  public var variables: GraphQLMap? {
    return ["description": description, "id": id, "title": title]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMyModelType", arguments: ["description": GraphQLVariable("description"), "id": GraphQLVariable("id"), "title": GraphQLVariable("title")], type: .object(OnUpdateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMyModelType: OnUpdateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMyModelType": onUpdateMyModelType.flatMap { $0.snapshot }])
    }

    public var onUpdateMyModelType: OnUpdateMyModelType? {
      get {
        return (snapshot["onUpdateMyModelType"] as? Snapshot).flatMap { OnUpdateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMyModelType")
      }
    }

    public struct OnUpdateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(description: String? = nil, id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "description": description, "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}