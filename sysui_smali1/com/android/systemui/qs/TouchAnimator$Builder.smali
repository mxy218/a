.class public Lcom/android/systemui/qs/TouchAnimator$Builder;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEndDelay:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mStartDelay:F

.field private mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    return-void
.end method

.method private add(Ljava/lang/Object;Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Landroid/util/Property;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/util/Property;"
        }
    .end annotation

    .line 147
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_8b

    const/4 v0, -0x1

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_a6

    goto :goto_6c

    :sswitch_d
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x3

    goto :goto_6c

    :sswitch_17
    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x6

    goto :goto_6c

    :sswitch_22
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x5

    goto :goto_6c

    :sswitch_2d
    const-string v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x4

    goto :goto_6c

    :sswitch_37
    const-string v1, "scaleY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/16 v0, 0x8

    goto :goto_6c

    :sswitch_42
    const-string v1, "scaleX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x7

    goto :goto_6c

    :sswitch_4c
    const-string/jumbo v1, "translationZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x2

    goto :goto_6c

    :sswitch_57
    const-string/jumbo v1, "translationY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x1

    goto :goto_6c

    :sswitch_62
    const-string/jumbo v1, "translationX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x0

    :cond_6c
    :goto_6c
    packed-switch v0, :pswitch_data_cc

    goto :goto_8b

    .line 166
    :pswitch_70  #0x8
    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-object p0

    .line 164
    :pswitch_73  #0x7
    sget-object p0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    return-object p0

    .line 162
    :pswitch_76  #0x6
    sget-object p0, Landroid/view/View;->Y:Landroid/util/Property;

    return-object p0

    .line 160
    :pswitch_79  #0x5
    sget-object p0, Landroid/view/View;->X:Landroid/util/Property;

    return-object p0

    .line 158
    :pswitch_7c  #0x4
    sget-object p0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    return-object p0

    .line 156
    :pswitch_7f  #0x3
    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    return-object p0

    .line 154
    :pswitch_82  #0x2
    sget-object p0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    return-object p0

    .line 152
    :pswitch_85  #0x1
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    return-object p0

    .line 150
    :pswitch_88  #0x0
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    return-object p0

    .line 169
    :cond_8b
    :goto_8b
    instance-of v0, p0, Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_9c

    const-string v0, "position"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 170
    invoke-static {}, Lcom/android/systemui/qs/TouchAnimator;->access$100()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0

    .line 172
    :cond_9c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x490b9c39 -> :sswitch_62
        -0x490b9c38 -> :sswitch_57
        -0x490b9c37 -> :sswitch_4c
        -0x3621dfb2 -> :sswitch_42
        -0x3621dfb1 -> :sswitch_37
        -0x266f082 -> :sswitch_2d
        0x78 -> :sswitch_22
        0x79 -> :sswitch_17
        0x589b15e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_88  #00000000
        :pswitch_85  #00000001
        :pswitch_82  #00000002
        :pswitch_7f  #00000003
        :pswitch_7c  #00000004
        :pswitch_79  #00000005
        :pswitch_76  #00000006
        :pswitch_73  #00000007
        :pswitch_70  #00000008
    .end packed-switch
.end method


# virtual methods
.method public varargs addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .registers 5

    .line 132
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Landroid/util/Property;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->ofFloat(Landroid/util/Property;[F)Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->add(Ljava/lang/Object;Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;)V

    return-object p0
.end method

.method public build()Lcom/android/systemui/qs/TouchAnimator;
    .registers 10

    .line 196
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    iget v3, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    iget v4, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v5, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v6, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/TouchAnimator;-><init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;Lcom/android/systemui/qs/TouchAnimator$1;)V

    return-object v8
.end method

.method public setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .registers 2

    .line 176
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    return-object p0
.end method
