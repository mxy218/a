.class public Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final inverted:Z

.field private final maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 20
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 21
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 22
    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public getMaskPath()Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public isInverted()Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    return p0
.end method
