.class Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SmartReplyView.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# instance fields
.field private buttonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

.field private show:Z

.field private squeezeStatus:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 931
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 922
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 923
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 924
    sget-object p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->buttonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-void
.end method

.method synthetic constructor <init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V
    .registers 4

    .line 900
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 927
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 922
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 923
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 924
    sget-object p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->buttonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/SmartReplyView$1;)V
    .registers 4

    .line 900
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;
    .registers 1

    .line 900
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->buttonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;
    .registers 2

    .line 900
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->buttonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z
    .registers 1

    .line 900
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z
    .registers 2

    .line 900
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I
    .registers 1

    .line 900
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I
    .registers 2

    .line 900
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    return p1
.end method


# virtual methods
.method isShown()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 936
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    return p0
.end method
