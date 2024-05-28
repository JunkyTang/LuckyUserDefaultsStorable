# LuckyUserDefaultsStorable

## 介绍

简单的属性包装器，在存储配置的时候很有用，用法简单


## 安装

```ruby
    pod 'LuckyUserDefaultsStorable'
```

## 用法

* 定义数据格式

```swift
    
     struct Config: Codable {
    
        var host: String
        
        // 更多属性
    }
    
```

* 使用属性包装器

```swift

        @UserDefaultsStorable(key: "Config.defoult", defaultValue: Config(host: "https://www.google.com"))
        static var defoult: Config
```

## 解析

```swift

    /// UserDefaults的suitName 为空时为UserDefaults.standard
    let suitName: String?
    
    /// 保存用的key
    let key: String
    
    /// UserDefaults中没有值时返回这个
    let defaultValue: T

```

```swift
/// 请在符合Codable的数据中使用
public struct UserDefaultsStorable<T: Codable>
```


