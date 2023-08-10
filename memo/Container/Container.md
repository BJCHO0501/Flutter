# 📦 Container

> [컨테이너](https://namu.wiki/w/컨테이너)

- 컨테이너 클래스는 자식 위젯을 한개 포함하며, 크기를 지정할 수 있다
- 우리가 아는 그 컨테이너와 같이 위젯을 담을 수 있는 상자라 볼 수 있다.

```dart
Container({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.child,
    this.clipBehavior = Clip.none,
}...
```

- 위와같은 생성자를 가지고 있으며, 자주 사용하는건 **`padding, color, width, height, child`** 등이 있을것 같다.

## 사용해보기

![code1](https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/code1.png?raw=true)

- 위는 간단하게 컨테이너를 표시한 코드이다. 실행 결과는 아래와 같다.

<img src="https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/result1.png?raw=true" alt="code1" style="zoom:25%;" />

- 코드를 보면 가로, 세로 100의 색이 검정인 컨테이너를 만들어 넣었다는걸 알 수 있다.
- 조금더 추가하여, 컨테이너의 child를 사용한 뷰를 만들어 보자.

![code1](https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/code2.png?raw=true)

- 위 코드에서 **`Text`**위젯을 추가해 보았다. 이렇게 하면 아래와 같이 컨테이너 안에 **`Text`**위젯이 들어가게 된다.

<img src="https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/result2.png?raw=true" alt="Untitled" style="zoom:25%;" />

## Decoration 😍

- Decoration이 뭔가? 우리가 알다시피 무언가는 꾸미는 것이다.
- decoration에는 **`Decoration?`**이라는 타입을 넣을 수 있게 되어있는데, Contaner에 경우 **BoxDecoration**이라는 클래스를 넣어준다.

```dart
BoxDecoration BoxDecoration({   
	Color? color,  
	DecorationImage? image,   
	BoxBorder? border,   
	BorderRadiusGeometry? borderRadius,   
	List<BoxShadow>? boxShadow,   
	Gradient? gradient,   
	BlendMode? backgroundBlendMode,   
	BoxShape shape = BoxShape.rectangle, 
})
```

- 위와같은 초기값들을 가질수 있는데, **Color, border, borderRadius, shape**정도를 다뤄보려 한다.

### color

- 말 그대로 컨테이너의 색을 지정해주는 것이다.
- 하지만 주의할 점이 있다.

```dart
Container(
  width: 100, // 너비 지정
  height: 100, // 높이 지정
  decoration: BoxDecoration(
    color: Colors.black
  ),
  color: Colors.black, // 색 지정
  child: const Text("응애", style: TextStyle(color: Colors.white)),
),
```

- 위 코드를 작동시키면 화면에서 경고를 띄우며 작동하지 않는데, 이는 **Container**의 **color**과 **BoxDecoration**의 **color**을 둘다 정의해서 이다.
- 만약 BoxDecoration을 쓰고 컨테이너의 배경색을 지정하고 싶다면 **BoxDecoration안에 있는 color만 설정**해야 작동한다는 것을 숙지하자.

### border

- 컨테이너의 외각선을 설정하는 기능이다.
- Border 클래스를 이용하는데, border의 굵기, 색상, 스타일 등을 설정할 수 있다.

```dart
Container(
	width: 100, // 너비 지정
	height: 100, // 높이 지정
	decoration: BoxDecoration(
	  color: Colors.black,
	  border: Border.all(
	    color: Colors.red,
	    style: BorderStyle.solid,
	    width: 5,
	  )
	),
	color: Colors.black, // 색 지정
	child: const Text("응애", style: TextStyle(color: Colors.white)),
),
```

- 위는 간단하게 빨간색 굵기 5짜리 외각선을 만든 코드이다.

<img src="https://i.ibb.co/Kr8XL1Q/result1.png&quot; alt=&quot;result2" alt="Untitled" style="zoom:50%;" />

- 빨간 외각선이 추가된것을 볼 수 있다.

### **borderRadius**

- 외각선의 굴곡도를 조절하는 기능이다.
- 각각의 모서리를 지정할 수도 있고, 모든 곳의 굴곡도를 지정할 수도 있다.
- `BorderRadius`라는 클래스를 사용하며 **.all, .horizontal, .vertical** 등을 설정해 줄수 있다.

```dart
Container(
  width: 100, // 너비 지정
  height: 100, // 높이 지정
  decoration: BoxDecoration(
    color: Colors.black,
    border: Border.all(
      color: Colors.red,
      style: BorderStyle.solid,
      width: 5,
    ),
    borderRadius: const BorderRadius.all(Radius.circular(10))
  ),
  child: const Text("응애", style: TextStyle(color: Colors.white)),
),
```

- 간단하게 모든 모서리에 10의 Radius를 준 코드이다.

<img src="https://i.ibb.co/rtmDLTw/result2.png&quot; alt=&quot;result2" alt="Untitled" style="zoom:50%;" />

- 보이는 것과 같이 border에도 굴곡이 들어간다.

### shape

- 컨테이너의 모양을 바꾸는 기능이다.
- `BoxShape`이라는 클래스를 사용하며, **.circle, .rectangle**등이 있다.

```dart
Container(
  width: 100, // 너비 지정
  height: 100, // 높이 지정
  decoration: BoxDecoration(
    color: Colors.black,
    border: Border.all(
      color: Colors.red,
      style: BorderStyle.solid,
      width: 5,
    ),
    shape: BoxShape.circle
  ),
  child: const Text("응애", style: TextStyle(color: Colors.white)),
),
```

- shape을 **circle** 즉 원으로 준 코드이다.

<img src="https://i.ibb.co/nB22L01/result3.png&quot; alt=&quot;result3" alt="Untitled" style="zoom:50%;" />

- 간단하게 원을 구현할 수 있다.

### 그외..

- **image:** **컨테이너에 이미지를 입힌다.**
- **gradient:** **컨테이너의 배경색을 원하는 색의 그라데이션으로 설정한다.**
- **boxShadow:** **컨테이너에 그림자를 만든다.**
- **backgroundBlendMode: 블렌더 모드를 설정한다.**



## 결론 🔖

- 결론적으로 컨테이너는 **width**와 **height**을 이용해 크기를 조절하고, **child**에 다른 위젯을 넣어 사용하는 위젯이라 볼 수 있다.
- 주로 어떤 위젯들을 배치하기 전 배경같은 존재로 쓸일이 많을것 같다.
- 다음에는 컨테이너를 커스텀 하는 **decoration**에 대해 정리해 봐야겠다.

## 참고 💡

[[flutter\] 20강 | 컨테이너 위젯 (container widget) 되짚어 보기.](https://rldd.tistory.com/173)

[Layouts in Flutter](https://docs.flutter.dev/ui/layout)