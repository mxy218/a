.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutParams"
.end annotation


# instance fields
.field public ignoreRightInset:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V
    .registers 4

    .line 621
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 622
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 625
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 626
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 628
    sget-object p1, Lcom/android/systemui/R$styleable;->StatusBarWindowView_Layout:[I

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 629
    sget p2, Lcom/android/systemui/R$styleable;->StatusBarWindowView_Layout_ignoreRightInset:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    .line 631
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
