.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4

    .line 639
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 641
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 642
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 945
    const/4 v0, 0x0

    const-string v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 946
    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 948
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p1, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object p1
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13

    .line 956
    const/4 v0, 0x0

    const-string/jumbo v1, "net-capabilities"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 957
    const-string/jumbo v2, "net-unwanted-capabilities"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 959
    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 960
    const/4 v4, 0x1

    if-eqz v1, :cond_57

    if-eqz v3, :cond_57

    .line 961
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 962
    if-eqz v2, :cond_2b

    .line 963
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_35

    .line 964
    :cond_2b
    iget-object v2, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v6

    .line 967
    :goto_35
    iget-object v2, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 968
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    .line 969
    invoke-static {v6, v7}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v6

    .line 967
    invoke-virtual {v2, v1, v6}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 970
    iget-object v1, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 971
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v2

    .line 970
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 972
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 973
    goto :goto_88

    .line 975
    :cond_57
    const-string v1, "connectivity"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    if-eqz v1, :cond_62

    .line 977
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 979
    :cond_62
    const-string v1, "metered"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 980
    if-eqz v1, :cond_6e

    .line 981
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 983
    :cond_6e
    const-string/jumbo v1, "unmetered"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    if-eqz v1, :cond_7b

    .line 985
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 987
    :cond_7b
    const-string/jumbo v1, "not-roaming"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    if-eqz v1, :cond_88

    .line 989
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 993
    :cond_88
    :goto_88
    const-string v1, "idle"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    if-eqz v1, :cond_93

    .line 995
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 997
    :cond_93
    const-string v1, "charging"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    if-eqz v1, :cond_9e

    .line 999
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1001
    :cond_9e
    const-string v1, "battery-not-low"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    if-eqz v1, :cond_a9

    .line 1003
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1005
    :cond_a9
    const-string/jumbo v1, "storage-not-low"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1006
    if-eqz p2, :cond_b5

    .line 1007
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1009
    :cond_b5
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1040
    const/4 v0, 0x0

    const-string v1, "delay"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    if-eqz v1, :cond_e

    .line 1042
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_10

    .line 1043
    :cond_e
    const-wide/16 v1, 0x0

    .line 1044
    :goto_10
    const-string v3, "deadline"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1045
    if-eqz p1, :cond_1d

    .line 1046
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_22

    .line 1047
    :cond_1d
    const-wide v3, 0x7fffffffffffffffL

    .line 1048
    :goto_22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1016
    const/4 v0, 0x0

    const-string v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    if-eqz v1, :cond_1a

    .line 1018
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1019
    const-string v3, "backoff-policy"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1020
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1021
    invoke-virtual {p1, v1, v2, p2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1023
    :cond_1a
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    const-string v0, "Invalid version number, aborting jobs file read."

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 693
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 695
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 696
    :goto_13
    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "JobStore"

    if-eq p1, v2, :cond_38

    if-eq p1, v3, :cond_38

    .line 698
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 701
    :cond_38
    const/4 v5, 0x0

    if-ne p1, v3, :cond_47

    .line 702
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 703
    const-string p1, "No persisted jobs."

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_46
    return-object v5

    .line 708
    :cond_47
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 709
    const-string v6, "job-info"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 710
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 713
    :try_start_58
    const-string/jumbo v6, "version"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 714
    if-eqz v6, :cond_69

    .line 715
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_68} :catch_ac

    .line 716
    return-object v5

    .line 721
    :cond_69
    nop

    .line 722
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 725
    :cond_6e
    if-ne v0, v2, :cond_a5

    .line 726
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 728
    const-string v5, "job"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 729
    invoke-direct {p0, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_a0

    .line 731
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_9c
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 736
    :cond_a0
    const-string v0, "Error reading job from file."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_a5
    :goto_a5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 741
    if-ne v0, v3, :cond_6e

    .line 742
    return-object p1

    .line 718
    :catch_ac
    move-exception p1

    .line 719
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-object v5

    .line 744
    :cond_b1
    return-object v5
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "JobStore"

    .line 762
    const/4 v3, 0x0

    :try_start_7
    invoke-direct {v0, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 763
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 764
    const-string/jumbo v6, "uid"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 766
    const-string/jumbo v6, "priority"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 767
    if-eqz v6, :cond_2a

    .line 768
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 770
    :cond_2a
    const-string v6, "flags"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 771
    if-eqz v6, :cond_39

    .line 772
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 774
    :cond_39
    const-string v6, "internalFlags"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 775
    if-eqz v6, :cond_48

    .line 776
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v25, v6

    goto :goto_4a

    .line 775
    :cond_48
    const/16 v25, 0x0

    .line 778
    :goto_4a
    const-string/jumbo v6, "sourceUserId"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 779
    if-nez v6, :cond_55

    const/4 v6, -0x1

    goto :goto_59

    :cond_55
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_59
    move v11, v6

    .line 781
    const-string v6, "lastSuccessfulRunTime"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 782
    if-nez v6, :cond_65

    const-wide/16 v20, 0x0

    goto :goto_6b

    :cond_65
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v20, v14

    .line 784
    :goto_6b
    const-string v6, "lastFailedRunTime"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 785
    if-nez v6, :cond_76

    const-wide/16 v22, 0x0

    goto :goto_7c

    :cond_76
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7a} :catch_2e7

    move-wide/from16 v22, v14

    .line 789
    :goto_7c
    nop

    .line 791
    const-string/jumbo v6, "sourcePackageName"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 792
    const-string/jumbo v8, "sourceTag"

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 797
    :goto_8b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 798
    const/4 v10, 0x4

    if-eq v8, v10, :cond_2db

    .line 800
    const/4 v14, 0x2

    if-ne v8, v14, :cond_2d9

    .line 801
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "constraints"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a4

    move-object v10, v3

    goto/16 :goto_2da

    .line 806
    :cond_a4
    :try_start_a4
    invoke-direct {v0, v4, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_a7} :catch_2d1

    .line 810
    nop

    .line 811
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 815
    :goto_ab
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 816
    if-eq v8, v10, :cond_2ba

    .line 817
    if-eq v8, v14, :cond_b4

    .line 818
    return-object v3

    .line 824
    :cond_b4
    :try_start_b4
    invoke-direct {v0, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_b8} :catch_2ac

    .line 830
    nop

    .line 832
    sget-object v12, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v12}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 833
    invoke-static {v8, v12, v13}, Lcom/android/server/job/JobStore;->access$600(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v10

    .line 835
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v5, "periodic"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 837
    :try_start_d0
    const-string/jumbo v5, "period"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 838
    move-object/from16 v26, v8

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 839
    const-string v5, "flex"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 840
    if-eqz v5, :cond_f1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object v5, v15

    move-wide/from16 v14, v27

    goto :goto_f3

    :cond_f1
    move-object v5, v15

    move-wide v14, v7

    .line 841
    :goto_f3
    invoke-virtual {v4, v7, v8, v14, v15}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 846
    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    add-long v31, v12, v7

    add-long v31, v31, v14

    cmp-long v3, v29, v31

    if-lez v3, :cond_165

    .line 847
    add-long v29, v12, v14

    add-long v29, v29, v7

    .line 849
    sub-long v7, v29, v14

    .line 851
    const-string v3, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    const/4 v14, 0x5

    new-array v15, v14, [Ljava/lang/Object;

    .line 854
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v27, 0x0

    aput-object v14, v15, v27

    iget-object v14, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    .line 855
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    const-wide/16 v33, 0x3e8

    div-long v31, v31, v33

    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    const/16 v24, 0x1

    aput-object v14, v15, v24

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    .line 856
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    div-long v31, v31, v33

    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v15, v14

    const/4 v10, 0x3

    div-long v31, v7, v33

    .line 857
    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v10

    div-long v31, v29, v33

    .line 859
    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    aput-object v10, v15, v14

    .line 852
    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    nop

    .line 863
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_164} :catch_168

    move-object v10, v3

    .line 868
    :cond_165
    const-wide/16 v14, 0x0

    goto :goto_1b8

    .line 865
    :catch_168
    move-exception v0

    .line 866
    const-string v0, "Error reading periodic execution criteria, skipping."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v1, 0x0

    return-object v1

    .line 869
    :cond_170
    move-object/from16 v26, v8

    move-object v5, v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "one-off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 871
    :try_start_180
    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v14, 0x0

    cmp-long v3, v7, v14

    if-eqz v3, :cond_19a

    .line 872
    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v12

    invoke-virtual {v4, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 874
    :cond_19a
    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v3, v7, v16

    if-eqz v3, :cond_1b7

    .line 875
    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 876
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v12

    .line 875
    invoke-virtual {v4, v7, v8}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_1b7
    .catch Ljava/lang/NumberFormatException; {:try_start_180 .. :try_end_1b7} :catch_284

    .line 881
    :cond_1b7
    nop

    .line 889
    :goto_1b8
    invoke-direct {v0, v4, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 891
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 895
    :goto_1be
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 896
    const/4 v3, 0x4

    if-eq v0, v3, :cond_280

    .line 897
    const/4 v7, 0x2

    if-ne v0, v7, :cond_273

    .line 898
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "extras"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d6

    goto/16 :goto_273

    .line 905
    :cond_1d6
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 906
    invoke-virtual {v4, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 907
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 911
    :try_start_1e0
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_258

    .line 916
    nop

    .line 919
    const-string v1, "android"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    if-eqz v0, :cond_21e

    .line 921
    const-string v1, "SyncManagerJob"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 922
    const-string/jumbo v1, "owningPackage"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v1

    if-eqz v1, :cond_21f

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21f

    .line 930
    :cond_21e
    move-object v0, v6

    :cond_21f
    :goto_21f
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobSchedulerInternal;

    .line 931
    invoke-static {v0, v11, v12, v13}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v12

    .line 933
    if-eqz v1, :cond_233

    invoke-interface {v1}, Lcom/android/server/job/JobSchedulerInternal;->currentHeartbeat()J

    move-result-wide v1

    move-wide v13, v1

    goto :goto_234

    :cond_233
    move-wide v13, v14

    .line 934
    :goto_234
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    .line 935
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v8

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 937
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 939
    if-eqz p1, :cond_24f

    const/16 v24, 0x0

    goto :goto_251

    :cond_24f
    move-object/from16 v24, v26

    :goto_251
    move-object v7, v1

    move-object v10, v0

    move-object v15, v5

    invoke-direct/range {v7 .. v25}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V

    .line 940
    return-object v1

    .line 912
    :catch_258
    move-exception v0

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to build job from XML, ignoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v1, 0x0

    return-object v1

    .line 899
    :cond_273
    :goto_273
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 900
    const-string v0, "Error reading extras, skipping."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_27e
    const/4 v1, 0x0

    return-object v1

    .line 896
    :cond_280
    const/4 v7, 0x2

    const/4 v8, 0x0

    goto/16 :goto_1be

    .line 878
    :catch_284
    move-exception v0

    .line 879
    const-string v0, "Error reading job execution criteria, skipping."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v1, 0x0

    return-object v1

    .line 883
    :cond_28c
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2aa

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_2aa
    const/4 v1, 0x0

    return-object v1

    .line 825
    :catch_2ac
    move-exception v0

    .line 826
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 827
    const-string v0, "Error parsing execution time parameters, skipping."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_2b8
    const/4 v10, 0x0

    return-object v10

    .line 816
    :cond_2ba
    move/from16 v24, v5

    move v7, v14

    move-object v5, v15

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    move/from16 v35, v10

    move-object v10, v3

    move/from16 v3, v35

    move-object v15, v5

    move v14, v7

    move/from16 v5, v24

    move-object/from16 v35, v10

    move v10, v3

    move-object/from16 v3, v35

    goto/16 :goto_ab

    .line 807
    :catch_2d1
    move-exception v0

    move-object v10, v3

    .line 808
    const-string v0, "Error reading constraints, skipping."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v10

    .line 800
    :cond_2d9
    move-object v10, v3

    .line 803
    :goto_2da
    return-object v10

    .line 798
    :cond_2db
    move/from16 v24, v5

    move-object v5, v15

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    move-object v15, v5

    move/from16 v5, v24

    const/4 v3, 0x0

    goto/16 :goto_8b

    .line 786
    :catch_2e7
    move-exception v0

    .line 787
    const-string v0, "Error parsing job\'s required fields, skipping"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 651
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_d0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_13} :catch_a0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_a0
    .catchall {:try_start_4 .. :try_end_13} :catchall_9b

    .line 653
    :try_start_13
    iget-boolean v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v1, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v3

    .line 654
    if-eqz v3, :cond_57

    .line 655
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 656
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_89

    .line 657
    move v7, v0

    move v8, v7

    move v9, v8

    :goto_28
    :try_start_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_55

    .line 658
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 659
    invoke-virtual {v10, v6}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 660
    iput-wide v4, v10, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 661
    iget-object v11, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 663
    add-int/lit8 v9, v9, 0x1

    .line 664
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_52

    .line 665
    add-int/lit8 v7, v7, 0x1

    .line 666
    invoke-static {v10}, Lcom/android/server/job/JobStore;->access$300(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_99

    if-eqz v10, :cond_52

    .line 667
    add-int/lit8 v8, v8, 0x1

    .line 657
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_55
    move v0, v7

    goto :goto_59

    .line 654
    :cond_57
    move v8, v0

    move v9, v8

    .line 672
    :goto_59
    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_86

    .line 673
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5d} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_5d} :catch_81
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_81
    .catchall {:try_start_5a .. :try_end_5d} :catchall_108

    .line 681
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_ec

    .line 682
    :goto_67
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v9, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v0, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v0, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v8, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto/16 :goto_ec

    .line 678
    :catch_81
    move-exception v1

    move v7, v0

    goto :goto_94

    .line 674
    :catch_84
    move-exception v1

    goto :goto_d3

    .line 672
    :catchall_86
    move-exception v1

    move v7, v0

    goto :goto_8d

    :catchall_89
    move-exception v1

    move v7, v0

    move v8, v7

    move v9, v8

    :goto_8d
    move-object v0, v1

    :goto_8e
    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_99

    :try_start_8f
    throw v0
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_90} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_90} :catch_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_90} :catch_93
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 681
    :catchall_90
    move-exception v1

    goto/16 :goto_10a

    .line 678
    :catch_93
    move-exception v1

    :goto_94
    move v0, v9

    goto :goto_a3

    .line 674
    :catch_96
    move-exception v0

    move v0, v7

    goto :goto_d3

    .line 672
    :catchall_99
    move-exception v0

    goto :goto_8e

    .line 681
    :catchall_9b
    move-exception v1

    move v7, v0

    move v8, v7

    goto/16 :goto_10b

    .line 678
    :catch_a0
    move-exception v1

    move v7, v0

    move v8, v7

    .line 679
    :goto_a3
    :try_start_a3
    const-string v2, "JobStore"

    const-string v3, "Error jobstore xml."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ce

    .line 681
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_cc

    .line 682
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v0, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v7, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v8, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 687
    :cond_cc
    move v9, v0

    goto :goto_ec

    .line 681
    :catchall_ce
    move-exception v1

    goto :goto_10b

    .line 674
    :catch_d0
    move-exception v1

    move v8, v0

    move v9, v8

    .line 675
    :goto_d3
    :try_start_d3
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 676
    const-string v1, "JobStore"

    const-string v2, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_108

    .line 681
    :cond_e0
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_ec

    .line 682
    goto/16 :goto_67

    .line 687
    :cond_ec
    :goto_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 681
    :catchall_108
    move-exception v1

    move v7, v0

    :goto_10a
    move v0, v9

    :goto_10b
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_12d

    .line 682
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v0, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v0, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v7, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v0, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v8, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    :cond_12d
    throw v1
.end method
