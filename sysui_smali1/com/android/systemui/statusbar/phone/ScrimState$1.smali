.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$1;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .registers 5

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v1, 0x1f4

    if-ne p1, v0, :cond_13

    .line 44
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 45
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    goto :goto_1e

    .line 51
    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1a

    .line 52
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_1e

    :cond_1a
    const-wide/16 v0, 0xdc

    .line 54
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    :cond_1e
    :goto_1e
    const/high16 p1, -0x1000000

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    .line 58
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindAlpha:F

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontAlpha:F

    return-void
.end method
