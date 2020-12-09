.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCableIndex:I

.field private mDevAddress:Ljava/lang/String;

.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 567
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V
    .registers 6

    .line 576
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 578
    const-string p1, "controller=0;stream=0"

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    .line 579
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 580
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 581
    iput p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .line 583
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 584
    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I

    .line 586
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo p3, "soc:qcom,msm-ext-disp"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 587
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 588
    if-eq p2, p1, :cond_6b

    .line 589
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 590
    nop

    .line 591
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 592
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 593
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "controller="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ";stream="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    .line 597
    invoke-direct {p0, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkDevIndex(I)V

    .line 598
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkCableIndex(I)V

    .line 601
    :cond_6b
    return-void
.end method

.method private checkCableIndex(I)V
    .registers 10

    .line 641
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 642
    return-void

    .line 644
    :cond_6
    nop

    .line 645
    const/16 v0, 0x400

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    .line 648
    :goto_d
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "soc:qcom,msm-ext-disp"

    aput-object v6, v5, v2

    iget v6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 650
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 648
    const-string v6, "/sys/devices/platform/soc/%s/extcon/extcon%d/cable.%d/name"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 655
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_56

    .line 657
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    goto :goto_87

    .line 662
    :cond_56
    :try_start_56
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 663
    invoke-virtual {v4, v1, v2, v0}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 664
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 666
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 667
    const-string v5, "DP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    if-ne v3, p1, :cond_78

    .line 668
    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_77} :catch_7c

    .line 669
    goto :goto_87

    .line 671
    :cond_78
    add-int/lit8 v3, v3, 0x1

    .line 676
    nop

    .line 677
    goto :goto_d

    .line 673
    :catch_7c
    move-exception p1

    .line 674
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkCableIndex exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    nop

    .line 678
    :goto_87
    return-void
.end method

.method private checkDevIndex(I)V
    .registers 11

    .line 604
    nop

    .line 605
    const/16 v0, 0x400

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    .line 608
    :goto_7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "soc:qcom,msm-ext-disp"

    aput-object v6, v5, v2

    .line 610
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 608
    const-string v7, "/sys/devices/platform/soc/%s/extcon/extcon%d/name"

    invoke-static {v4, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 615
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_47

    .line 617
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    goto :goto_76

    .line 622
    :cond_47
    :try_start_47
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 623
    invoke-virtual {v4, v1, v2, v0}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 624
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 626
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 627
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    if-ne v3, p1, :cond_67

    .line 628
    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_66} :catch_6b

    .line 629
    goto :goto_76

    .line 631
    :cond_67
    add-int/lit8 v3, v3, 0x1

    .line 636
    nop

    .line 637
    goto :goto_7

    .line 633
    :catch_6b
    move-exception p1

    .line 634
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkDevIndex exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    nop

    .line 638
    :goto_76
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .registers 3

    .line 707
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public computeNewHeadsetState(II)I
    .registers 8

    .line 712
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    or-int v2, v0, v1

    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    or-int/2addr v2, v3

    not-int v2, v2

    .line 713
    const/4 v4, 0x1

    if-ne p2, v4, :cond_e

    goto :goto_18

    .line 714
    :cond_e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_13

    move v0, v1

    goto :goto_18

    .line 715
    :cond_13
    if-ne p2, v3, :cond_17

    move v0, v3

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 717
    :goto_18
    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method public getDevAddress()Ljava/lang/String;
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDevName()Ljava/lang/String;
    .registers 2

    .line 681
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .registers 6

    .line 689
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    .line 690
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    .line 690
    const-string v1, "/devices/platform/soc/%s/extcon/extcon%d"

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 694
    :cond_23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "/devices/virtual/switch/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .registers 6

    .line 698
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2c

    .line 699
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 699
    const-string v1, "/sys/devices/platform/soc/%s/extcon/extcon%d/cable.%d/state"

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 703
    :cond_2c
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "/sys/class/switch/%s/state"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
