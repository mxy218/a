.class final Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BrightnessConfigurations"
.end annotation


# instance fields
.field private mConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStamps:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 586
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 587
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 588
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 4

    .line 576
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 593
    if-eq v0, p1, :cond_41

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 594
    :cond_12
    if-eqz p1, :cond_30

    .line 595
    if-nez p3, :cond_1c

    .line 596
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_21

    .line 598
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    :goto_21
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 601
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3f

    .line 603
    :cond_30
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 604
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 605
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 607
    :goto_3f
    const/4 p1, 0x1

    return p1

    .line 609
    :cond_41
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 680
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_94

    .line 681
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 682
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    .line 683
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 684
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    cmp-long v1, v5, v3

    if-eqz v1, :cond_5a

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  set at: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    :cond_5a
    if-eqz v2, :cond_73

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  set by: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 693
    :cond_94
    return-void
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 617
    const-string v0, "DisplayManager"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 618
    :cond_6
    :goto_6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 619
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brightness-configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 622
    const/4 v2, 0x0

    :try_start_19
    const-string/jumbo v3, "user-serial"

    .line 623
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_24} :catch_25

    .line 627
    goto :goto_2d

    .line 624
    :catch_25
    move-exception v3

    .line 625
    const/4 v4, -0x1

    .line 626
    const-string v5, "Failed to read in brightness configuration"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 629
    :goto_2d
    const-string/jumbo v4, "package-name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 630
    const-string/jumbo v5, "timestamp"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    nop

    .line 632
    const-wide/16 v5, -0x1

    if-eqz v2, :cond_46

    .line 634
    :try_start_40
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_44} :catch_45

    .line 637
    goto :goto_47

    .line 635
    :catch_45
    move-exception v2

    .line 641
    :cond_46
    move-wide v7, v5

    :goto_47
    nop

    .line 642
    :try_start_48
    invoke-static {p1}, Landroid/hardware/display/BrightnessConfiguration;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 643
    if-ltz v3, :cond_65

    if-eqz v2, :cond_65

    .line 644
    iget-object v9, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    cmp-long v2, v7, v5

    if-eqz v2, :cond_5e

    .line 646
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 648
    :cond_5e
    if-eqz v4, :cond_65

    .line 649
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_65} :catch_66

    .line 654
    :cond_65
    goto :goto_6c

    .line 652
    :catch_66
    move-exception v2

    .line 653
    const-string v3, "Failed to load brightness configuration!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    :goto_6c
    goto :goto_6

    .line 657
    :cond_6d
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 661
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 662
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 664
    const-string v3, "brightness-configuration"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user-serial"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 667
    if-eqz v5, :cond_37

    .line 668
    const-string/jumbo v6, "package-name"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    :cond_37
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v1, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    .line 671
    cmp-long v1, v8, v6

    if-eqz v1, :cond_4d

    .line 672
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "timestamp"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    :cond_4d
    invoke-virtual {v2, p1}, Landroid/hardware/display/BrightnessConfiguration;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 675
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    :cond_56
    return-void
.end method
