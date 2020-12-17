.class public Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlymeState"
.end annotation


# instance fields
.field public final activityInoutId:I

.field public final canShowHD:Z

.field public final isRadioOn:Z

.field public final networkTypeIdWhenShowVoiceType:I

.field public final voiceStrengthId:I

.field public final voiceTypeId:I

.field public final voiceVisible:Z


# direct methods
.method public constructor <init>(ZZZIIII)V
    .registers 8

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceVisible:Z

    .line 163
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->isRadioOn:Z

    .line 164
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->canShowHD:Z

    .line 165
    iput p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->activityInoutId:I

    .line 166
    iput p5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceTypeId:I

    .line 167
    iput p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceStrengthId:I

    .line 168
    iput p7, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->networkTypeIdWhenShowVoiceType:I

    return-void
.end method
