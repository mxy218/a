.class Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "AnimatableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorTag:I

.field final synthetic val$endValueTag:I

.field final synthetic val$property:Landroid/util/Property;

.field final synthetic val$startValueTag:I


# direct methods
.method constructor <init>(IIILandroid/util/Property;)V
    .registers 5

    .line 85
    iput p1, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$startValueTag:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$endValueTag:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$animatorTag:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$property:Landroid/util/Property;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationEndTag()I
    .registers 1

    .line 93
    iget p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$endValueTag:I

    return p0
.end method

.method public getAnimationStartTag()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$startValueTag:I

    return p0
.end method

.method public getAnimatorTag()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$animatorTag:I

    return p0
.end method

.method public getProperty()Landroid/util/Property;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;->val$property:Landroid/util/Property;

    return-object p0
.end method
