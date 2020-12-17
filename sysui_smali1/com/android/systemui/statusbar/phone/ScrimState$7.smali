.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
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

    .line 154
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .registers 5

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindAlpha:F

    .line 158
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontAlpha:F

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_c

    .line 160
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAwayDuration:J

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x12c

    .line 161
    :goto_e
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    .line 165
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_34

    .line 167
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 168
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 170
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 171
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    .line 172
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    goto :goto_3a

    .line 174
    :cond_34
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 175
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    .line 176
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    :goto_3a
    return-void
.end method
