.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
.super Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
.source "StatusBarSignalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileIconState"
.end annotation


# instance fields
.field public activityInoutId:I

.field public canShowHD:Z

.field public isRadioOn:Z

.field public needResetView:Z

.field public needsLeadingPadding:Z

.field public networkTypeIdWhenShowVoiceType:I

.field public roaming:Z

.field public slotId:I

.field public strengthId:I

.field public subId:I

.field public typeContentDescription:Ljava/lang/CharSequence;

.field public typeId:I

.field public voiceStrengthId:I

.field public voiceTypeId:I

.field public voiceVisible:Z

.field public volteId:I

.field public volteMergeId:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    const/4 v0, -0x1

    .line 450
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    .line 464
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->getSlotId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V
    .registers 3

    .line 440
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .registers 1

    .line 440
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyStates(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static copyStates(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 546
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 547
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 548
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .registers 3

    .line 515
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .registers 3

    .line 521
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;)V

    .line 522
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 523
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 524
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 526
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    .line 528
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 530
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    .line 531
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    .line 532
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    .line 533
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    .line 534
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    .line 535
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    .line 536
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    .line 537
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    .line 538
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    .line 539
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_81

    .line 472
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_d

    goto/16 :goto_81

    .line 475
    :cond_d
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v0

    .line 478
    :cond_14
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 479
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-ne v1, v2, :cond_81

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-ne v1, v2, :cond_81

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    if-ne v1, v2, :cond_81

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    .line 484
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    if-ne v1, v2, :cond_81

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    if-ne v1, v2, :cond_81

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    if-ne v1, v2, :cond_81

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    if-ne v1, v2, :cond_81

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    if-ne v1, v2, :cond_81

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-ne p0, p1, :cond_81

    const/4 v0, 0x1

    :cond_81
    :goto_81
    return v0
.end method

.method public getSlotId()I
    .registers 3

    .line 577
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 578
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    :cond_b
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    .line 505
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 506
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    .line 509
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    .line 510
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x11

    aput-object p0, v0, v1

    .line 505
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileIconState(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", strengthId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volteMergeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityInoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", voiceTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceStrengthId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkTypeIdWhenShowVoiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needResetView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRadioOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canShowHD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
