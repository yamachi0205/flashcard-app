##  アプリケーション名
    flashcard

##  アプリケーション概要
  - 単語帳として単語と意味を登録し学習の手助けをするためのアプリケーション

##  URL


##  テスト用アカウント

##  利用方法

##  目指した課題解決
  - 新たに何か学習を始める際は、その時に早く単語の意味を理解できるようになると、その後の学習がスムーズに実施できるようにするため
##  洗い出した要件
  - ユーザー登録機能
    - 
  - 単語登録機能
     - 
  - 単語表示機能
    - 
  -単語帳一覧表示機能
    - 
  - 単語検索機能
    - 
  - 単語削除機能
     - 
  - ユーザーマイページ
     - 
##  実装した機能についてのGIFと説明

##  実装予定の機能

##  データベース設計

### users テーブル
| Column      | Type       | option       |
| ----------- | ---------- | -------------|
| name        | string     | null: false  |
| nickname    | string     | null: false  |
| email       | string     | null: false  |
| password    | string     | null: false  |

#### Association

- has_many :flashcards


### flashcards テーブル
| Column      | Type       | option             |
| ----------- | ---------- | -------------------|
| word_id     | integer    | foreign_key: true  |
| user_id     | integer    | foreign_key: true  |
| name        | string     | null: false        |

#### Association

- has_many :words
- belongs_to :user


### words テーブル
| Column        | Type       | option             |
| ------------- | ---------- | -------------------|
| name          | string     | null: false        |
| meaning       | string     | null: false        |
| flashcard_id  | integer    | foreign_key: true  |

#### Association

- belongs_to :flashcard


##  ローカルでの動作方法