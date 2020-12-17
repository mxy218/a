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

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 602
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 603
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
    .param p1, "x1"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;

    .line 591
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 8
    .param p1, "c"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userSerial"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 608
    .local v0, "currentConfig":Landroid/hardware/display/BrightnessConfiguration;
    if-eq v0, p1, :cond_41

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 609
    :cond_12
    if-eqz p1, :cond_30

    .line 610
    if-nez p3, :cond_1c

    .line 611
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_21

    .line 613
    :cond_1c
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 615
    :goto_21
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 616
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3f

    .line 618
    :cond_30
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 619
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 620
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 622
    :goto_3f
    const/4 v1, 0x1

    return v1

    .line 624
    :cond_41
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_94

    .line 696
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 697
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    .line 698
    .local v5, "time":J
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 699
    .local v2, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    cmp-long v3, v5, v3

    if-eqz v3, :cond_5a

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  set at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    :cond_5a
    if-eqz v2, :cond_73

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  set by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    :cond_73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    .end local v1  # "userSerial":I
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v5  # "time":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 708
    .end local v0  # "i":I
    :cond_94
    return-void
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userSerial"  # I

    .line 628
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 632
    const-string v0, "DisplayManager"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 633
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 634
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brightness-configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 637
    const/4 v2, 0x0

    :try_start_19
    const-string/jumbo v3, "user-serial"

    .line 638
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_24} :catch_25

    .line 642
    .local v3, "userSerial":I
    goto :goto_2d

    .line 639
    .end local v3  # "userSerial":I
    :catch_25
    move-exception v3

    .line 640
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    .line 641
    .local v4, "userSerial":I
    const-string v5, "Failed to read in brightness configuration"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 644
    .end local v4  # "userSerial":I
    .local v3, "userSerial":I
    :goto_2d
    const-string/jumbo v4, "package-name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "timestamp"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "timeStampString":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 647
    .local v5, "timeStamp":J
    if-eqz v2, :cond_46

    .line 649
    :try_start_3f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_45

    move-wide v5, v7

    .line 652
    goto :goto_46

    .line 650
    :catch_45
    move-exception v7

    .line 656
    :cond_46
    :goto_46
    nop

    .line 657
    :try_start_47
    invoke-static {p1}, Landroid/hardware/display/BrightnessConfiguration;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v7

    .line 658
    .local v7, "config":Landroid/hardware/display/BrightnessConfiguration;
    if-ltz v3, :cond_66

    if-eqz v7, :cond_66

    .line 659
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 660
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_5f

    .line 661
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 663
    :cond_5f
    if-eqz v4, :cond_66

    .line 664
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_66} :catch_67

    .line 669
    .end local v7  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_66
    goto :goto_6d

    .line 667
    :catch_67
    move-exception v7

    .line 668
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    const-string v8, "Failed to load brightness configuration!"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v2  # "timeStampString":Ljava/lang/String;
    .end local v3  # "userSerial":I
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "timeStamp":J
    .end local v7  # "iae":Ljava/lang/IllegalArgumentException;
    :goto_6d
    goto :goto_6

    .line 672
    :cond_6e
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 13
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 676
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 677
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 679
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    const-string v3, "brightness-configuration"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user-serial"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 682
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 683
    const-string/jumbo v6, "package-name"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    :cond_37
    iget-object v6, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v1, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v9

    .line 686
    .local v9, "timestamp":J
    cmp-long v6, v9, v7

    if-eqz v6, :cond_4d

    .line 687
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "timestamp"

    invoke-interface {p1, v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 689
    :cond_4d
    invoke-virtual {v2, p1}, Landroid/hardware/display/BrightnessConfiguration;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 690
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    .end local v1  # "userSerial":I
    .end local v2  # "config":Landroid/hardware/display/BrightnessConfiguration;
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v9  # "timestamp":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    .end local v0  # "i":I
    :cond_56
    return-void
.end method
