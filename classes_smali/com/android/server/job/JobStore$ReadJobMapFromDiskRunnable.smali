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
    .param p2, "jobSet"  # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"  # Z

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
    .registers 7
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 945
    const/4 v0, 0x0

    const-string/jumbo v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 946
    .local v1, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "jobBuilder"  # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;

    .line 956
    const/4 v0, 0x0

    const-string/jumbo v1, "net-capabilities"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "netCapabilities":Ljava/lang/String;
    const-string/jumbo v2, "net-unwanted-capabilities"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, "netUnwantedCapabilities":Ljava/lang/String;
    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, "netTransportTypes":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v1, :cond_58

    if-eqz v3, :cond_58

    .line 961
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 962
    .local v5, "request":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_2b

    .line 963
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_35

    .line 964
    :cond_2b
    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v6

    :goto_35
    nop

    .line 967
    .local v6, "unwantedCapabilities":J
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 968
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 969
    invoke-static {v6, v7}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v10

    .line 967
    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 970
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 971
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 970
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 972
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 973
    .end local v5  # "request":Landroid/net/NetworkRequest;
    .end local v6  # "unwantedCapabilities":J
    goto :goto_8a

    .line 975
    :cond_58
    const-string v5, "connectivity"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_63

    .line 977
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 979
    :cond_63
    const-string/jumbo v6, "metered"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 980
    if-eqz v5, :cond_70

    .line 981
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 983
    :cond_70
    const-string/jumbo v6, "unmetered"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 984
    if-eqz v5, :cond_7d

    .line 985
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 987
    :cond_7d
    const-string/jumbo v6, "not-roaming"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 988
    if-eqz v5, :cond_8a

    .line 989
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 993
    .end local v5  # "val":Ljava/lang/String;
    :cond_8a
    :goto_8a
    const-string/jumbo v5, "idle"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    .restart local v5  # "val":Ljava/lang/String;
    if-eqz v5, :cond_96

    .line 995
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 997
    :cond_96
    const-string v6, "charging"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 998
    if-eqz v5, :cond_a1

    .line 999
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1001
    :cond_a1
    const-string v6, "battery-not-low"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    if-eqz v5, :cond_ac

    .line 1003
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1005
    :cond_ac
    const-string/jumbo v6, "storage-not-low"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .end local v5  # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_b8

    .line 1007
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1009
    :cond_b8
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 9
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
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
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 1042
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_10

    .line 1043
    :cond_e
    const-wide/16 v2, 0x0

    :goto_10
    nop

    .line 1044
    .local v2, "earliestRunTimeRtc":J
    const-string v4, "deadline"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    .end local v1  # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 1046
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_23

    .line 1047
    :cond_1e
    const-wide v4, 0x7fffffffffffffffL

    :goto_23
    nop

    .line 1048
    .local v4, "latestRunTimeRtc":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "jobBuilder"  # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;

    .line 1016
    const/4 v0, 0x0

    const-string/jumbo v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 1018
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1019
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1021
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1023
    .end local v0  # "backoffPolicy":I
    .end local v2  # "initialBackoff":J
    :cond_1b
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .registers 13
    .param p1, "fis"  # Ljava/io/FileInputStream;
    .param p2, "rtcIsGood"  # Z
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
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 695
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 696
    .local v2, "eventType":I
    :goto_13
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "JobStore"

    if-eq v2, v3, :cond_38

    if-eq v2, v4, :cond_38

    .line 698
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 701
    :cond_38
    const/4 v6, 0x0

    if-ne v2, v4, :cond_47

    .line 702
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 703
    const-string v0, "No persisted jobs."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_46
    return-object v6

    .line 708
    :cond_47
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 709
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 710
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v8, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_59
    const-string/jumbo v9, "version"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 714
    .local v9, "version":I
    if-eqz v9, :cond_6a

    .line 715
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_69} :catch_af

    .line 716
    return-object v6

    .line 721
    .end local v9  # "version":I
    :cond_6a
    nop

    .line 722
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 725
    .end local v2  # "eventType":I
    .local v0, "eventType":I
    :cond_6f
    if-ne v0, v3, :cond_a8

    .line 726
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 728
    .end local v7  # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 729
    invoke-direct {p0, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    .line 730
    .local v6, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v6, :cond_a2

    .line 731
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_9e
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 736
    :cond_a2
    const-string v7, "Error reading job from file."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v6  # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_a7
    :goto_a7
    move-object v7, v2

    .end local v2  # "tagName":Ljava/lang/String;
    .restart local v7  # "tagName":Ljava/lang/String;
    :cond_a8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 741
    if-ne v0, v4, :cond_6f

    .line 742
    return-object v8

    .line 718
    .end local v0  # "eventType":I
    .local v2, "eventType":I
    :catch_af
    move-exception v3

    .line 719
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-object v6

    .line 744
    .end local v3  # "e":Ljava/lang/NumberFormatException;
    .end local v8  # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b4
    return-object v6
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .registers 43
    .param p1, "rtcIsGood"  # Z
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "JobStore"

    const/4 v4, 0x0

    .line 762
    .local v4, "internalFlags":I
    const/4 v5, 0x0

    :try_start_8
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v6, v0

    .line 763
    .local v6, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 764
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 766
    .local v10, "uid":I
    const-string/jumbo v7, "priority"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 767
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_2c

    .line 768
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 770
    :cond_2c
    const-string v8, "flags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 771
    if-eqz v7, :cond_3c

    .line 772
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 774
    :cond_3c
    const-string/jumbo v8, "internalFlags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 775
    if-eqz v7, :cond_4b

    .line 776
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_4a} :catch_36a

    move v4, v8

    .line 778
    :cond_4b
    :try_start_4b
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 779
    if-nez v7, :cond_57

    const/4 v8, -0x1

    goto :goto_5b

    :cond_57
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_5b
    move v13, v8

    .line 781
    .local v13, "sourceUserId":I
    const-string/jumbo v8, "lastSuccessfulRunTime"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 782
    if-nez v7, :cond_69

    const-wide/16 v21, 0x0

    goto :goto_6f

    :cond_69
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v21, v11

    .line 784
    .local v21, "lastSuccessfulRunTime":J
    :goto_6f
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 785
    if-nez v7, :cond_7c

    const-wide/16 v23, 0x0

    goto :goto_82

    :cond_7c
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_80} :catch_366

    move-wide/from16 v23, v11

    .line 789
    .end local v7  # "val":Ljava/lang/String;
    .local v23, "lastFailedRunTime":J
    :goto_82
    nop

    .line 791
    const-string/jumbo v7, "sourcePackageName"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 797
    .local v27, "sourceTag":Ljava/lang/String;
    :goto_91
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 798
    .local v11, "eventType":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_35c

    .line 800
    const/4 v14, 0x2

    if-ne v11, v14, :cond_357

    .line 801
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v8, "constraints"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ad

    move/from16 v28, v4

    move-object v1, v5

    move v5, v13

    goto/16 :goto_35b

    .line 806
    :cond_ad
    :try_start_ad
    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b0} :catch_34a

    .line 810
    nop

    .line 811
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 815
    :goto_b4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 816
    if-eq v11, v12, :cond_33c

    .line 817
    if-eq v11, v14, :cond_bd

    .line 818
    return-object v5

    .line 824
    :cond_bd
    :try_start_bd
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_c1} :catch_329

    move-object v9, v8

    .line 830
    .local v9, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 832
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v18, v13

    .end local v13  # "sourceUserId":I
    .local v18, "sourceUserId":I
    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 833
    .local v12, "elapsedNow":J
    invoke-static {v9, v12, v13}, Lcom/android/server/job/JobStore;->access$600(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v8

    .line 835
    .local v8, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "periodic"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_197

    .line 837
    :try_start_dc
    const-string/jumbo v14, "period"

    invoke-interface {v2, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 838
    .local v14, "val":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v28, v25

    .line 839
    .local v28, "periodMillis":J
    const-string v0, "flex"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_dc .. :try_end_ef} :catch_18d

    .line 840
    .end local v14  # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_ff

    :try_start_f1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v30
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_f9} :catch_fa

    goto :goto_101

    .line 865
    .end local v0  # "val":Ljava/lang/String;
    .end local v28  # "periodMillis":J
    :catch_fa
    move-exception v0

    move/from16 v28, v4

    goto/16 :goto_190

    .line 840
    .restart local v0  # "val":Ljava/lang/String;
    .restart local v28  # "periodMillis":J
    :cond_ff
    move-wide/from16 v30, v28

    :goto_101
    move-wide/from16 v32, v30

    .line 841
    .local v32, "flexMillis":J
    move-object v14, v0

    move-wide/from16 v0, v28

    move/from16 v28, v4

    move-wide/from16 v4, v32

    .end local v32  # "flexMillis":J
    .local v0, "periodMillis":J
    .local v4, "flexMillis":J
    .restart local v14  # "val":Ljava/lang/String;
    .local v28, "internalFlags":I
    :try_start_10a
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 846
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    add-long v32, v12, v0

    add-long v32, v32, v4

    cmp-long v15, v30, v32

    if-lez v15, :cond_184

    .line 847
    add-long v32, v12, v4

    add-long v32, v32, v0

    .line 849
    .local v32, "clampedLateRuntimeElapsed":J
    sub-long v30, v32, v4

    .line 851
    .local v30, "clampedEarlyRuntimeElapsed":J
    const-string v15, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    move-wide/from16 v34, v0

    .end local v0  # "periodMillis":J
    .local v34, "periodMillis":J
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 854
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v29, 0x0

    aput-object v1, v0, v29

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 855
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v25, 0x1

    aput-object v1, v0, v25

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 856
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v20, 0x2

    aput-object v1, v0, v20

    const/4 v1, 0x3

    div-long v36, v30, v38

    .line 857
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v0, v1

    div-long v36, v32, v38

    .line 859
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x4

    aput-object v1, v0, v19

    move-object v1, v15

    move/from16 v15, v29

    .line 852
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    nop

    .line 863
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_182
    .catch Ljava/lang/NumberFormatException; {:try_start_10a .. :try_end_182} :catch_18b

    move-object v8, v0

    .end local v8  # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_187

    .line 846
    .end local v30  # "clampedEarlyRuntimeElapsed":J
    .end local v32  # "clampedLateRuntimeElapsed":J
    .end local v34  # "periodMillis":J
    .local v0, "periodMillis":J
    .restart local v8  # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_184
    move-wide/from16 v34, v0

    const/4 v15, 0x0

    .line 868
    .end local v0  # "periodMillis":J
    .end local v4  # "flexMillis":J
    .end local v14  # "val":Ljava/lang/String;
    :goto_187
    move-object v1, v8

    const-wide/16 v4, 0x0

    goto :goto_1e9

    .line 865
    :catch_18b
    move-exception v0

    goto :goto_190

    .end local v28  # "internalFlags":I
    .local v4, "internalFlags":I
    :catch_18d
    move-exception v0

    move/from16 v28, v4

    .line 866
    .end local v4  # "internalFlags":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v28  # "internalFlags":I
    :goto_190
    const-string v1, "Error reading periodic execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v1, 0x0

    return-object v1

    .line 869
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    :cond_197
    move/from16 v28, v4

    const/4 v15, 0x0

    .end local v4  # "internalFlags":I
    .restart local v28  # "internalFlags":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "one-off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_303

    .line 871
    :try_start_1a7
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1af
    .catch Ljava/lang/NumberFormatException; {:try_start_1a7 .. :try_end_1af} :catch_2f5

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1cb

    .line 872
    :try_start_1b5
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v12

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1b5 .. :try_end_1c1} :catch_1c2

    goto :goto_1cb

    .line 878
    :catch_1c2
    move-exception v0

    move-object/from16 v32, v9

    move-wide/from16 v34, v12

    move/from16 v5, v18

    goto/16 :goto_2fc

    .line 874
    :cond_1cb
    :goto_1cb
    :try_start_1cb
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1d3
    .catch Ljava/lang/NumberFormatException; {:try_start_1cb .. :try_end_1d3} :catch_2f5

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v0, v0, v16

    if-eqz v0, :cond_1e8

    .line 875
    :try_start_1dc
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 876
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v12

    .line 875
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_1e8
    .catch Ljava/lang/NumberFormatException; {:try_start_1dc .. :try_end_1e8} :catch_1c2

    .line 881
    :cond_1e8
    move-object v1, v8

    .line 889
    .end local v8  # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v1, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_1e9
    move-object/from16 v8, p0

    invoke-direct {v8, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 891
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 895
    :goto_1f1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 896
    const/4 v0, 0x4

    if-eq v11, v0, :cond_2e6

    .line 897
    const/4 v14, 0x2

    if-ne v11, v14, :cond_2d1

    .line 898
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "extras"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    move-object/from16 v32, v9

    move/from16 v33, v11

    move-wide/from16 v34, v12

    move/from16 v5, v18

    goto/16 :goto_2d9

    .line 905
    :cond_211
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v14

    .line 906
    .local v14, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v6, v14}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 907
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 911
    :try_start_21b
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_21f} :catch_2aa

    .line 916
    .local v0, "builtJob":Landroid/app/job/JobInfo;
    nop

    .line 919
    const-string v4, "android"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    if-eqz v14, :cond_259

    .line 921
    const-string v4, "SyncManagerJob"

    invoke-virtual {v14, v4, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_259

    .line 922
    const-string/jumbo v4, "owningPackage"

    invoke-virtual {v14, v4, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 923
    .end local v7  # "sourcePackageName":Ljava/lang/String;
    .local v4, "sourcePackageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v5

    if-eqz v5, :cond_25a

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25a

    .line 930
    .end local v4  # "sourcePackageName":Ljava/lang/String;
    .restart local v7  # "sourcePackageName":Ljava/lang/String;
    :cond_259
    move-object v4, v7

    .end local v7  # "sourcePackageName":Ljava/lang/String;
    .restart local v4  # "sourcePackageName":Ljava/lang/String;
    :cond_25a
    :goto_25a
    const-class v3, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobSchedulerInternal;

    .line 931
    .local v3, "service":Lcom/android/server/job/JobSchedulerInternal;
    move/from16 v5, v18

    .end local v18  # "sourceUserId":I
    .local v5, "sourceUserId":I
    invoke-static {v4, v5, v12, v13}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v7

    .line 933
    .local v7, "appBucket":I
    if-eqz v3, :cond_26f

    invoke-interface {v3}, Lcom/android/server/job/JobSchedulerInternal;->currentHeartbeat()J

    move-result-wide v15

    goto :goto_271

    :cond_26f
    const-wide/16 v15, 0x0

    :goto_271
    move-object/from16 v29, v14

    .end local v14  # "extras":Landroid/os/PersistableBundle;
    .local v29, "extras":Landroid/os/PersistableBundle;
    move-wide v14, v15

    .line 934
    .local v14, "currentHeartbeat":J
    new-instance v30, Lcom/android/server/job/controllers/JobStatus;

    .line 935
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v16

    move-object/from16 v31, v0

    .end local v0  # "builtJob":Landroid/app/job/JobInfo;
    .local v31, "builtJob":Landroid/app/job/JobInfo;
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 937
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 939
    if-eqz p1, :cond_291

    const/16 v25, 0x0

    goto :goto_293

    :cond_291
    move-object/from16 v25, v9

    :goto_293
    move-object/from16 v8, v30

    move-object/from16 v32, v9

    .end local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v32, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v9, v16

    move/from16 v33, v11

    .end local v11  # "eventType":I
    .local v33, "eventType":I
    move-object v11, v4

    move-wide/from16 v34, v12

    .end local v12  # "elapsedNow":J
    .local v34, "elapsedNow":J
    move v12, v5

    move v13, v7

    move-object/from16 v16, v27

    move/from16 v26, v28

    invoke-direct/range {v8 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V

    move-object/from16 v0, v30

    .line 940
    .local v0, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v0

    .line 912
    .end local v0  # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v3  # "service":Lcom/android/server/job/JobSchedulerInternal;
    .end local v4  # "sourcePackageName":Ljava/lang/String;
    .end local v5  # "sourceUserId":I
    .end local v29  # "extras":Landroid/os/PersistableBundle;
    .end local v31  # "builtJob":Landroid/app/job/JobInfo;
    .end local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33  # "eventType":I
    .end local v34  # "elapsedNow":J
    .local v7, "sourcePackageName":Ljava/lang/String;
    .restart local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11  # "eventType":I
    .restart local v12  # "elapsedNow":J
    .local v14, "extras":Landroid/os/PersistableBundle;
    .restart local v18  # "sourceUserId":I
    :catch_2aa
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v33, v11

    move-wide/from16 v34, v12

    move-object/from16 v29, v14

    move/from16 v5, v18

    move-object v4, v0

    .end local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11  # "eventType":I
    .end local v12  # "elapsedNow":J
    .end local v14  # "extras":Landroid/os/PersistableBundle;
    .end local v18  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v29  # "extras":Landroid/os/PersistableBundle;
    .restart local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v33  # "eventType":I
    .restart local v34  # "elapsedNow":J
    move-object v0, v4

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to build job from XML, ignoring: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v3, 0x0

    return-object v3

    .line 897
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v5  # "sourceUserId":I
    .end local v29  # "extras":Landroid/os/PersistableBundle;
    .end local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33  # "eventType":I
    .end local v34  # "elapsedNow":J
    .restart local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11  # "eventType":I
    .restart local v12  # "elapsedNow":J
    .restart local v18  # "sourceUserId":I
    :cond_2d1
    move-object/from16 v32, v9

    move/from16 v33, v11

    move-wide/from16 v34, v12

    move/from16 v5, v18

    .line 899
    .end local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11  # "eventType":I
    .end local v12  # "elapsedNow":J
    .end local v18  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v33  # "eventType":I
    .restart local v34  # "elapsedNow":J
    :goto_2d9
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 900
    const-string v0, "Error reading extras, skipping."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_2e4
    const/4 v3, 0x0

    return-object v3

    .line 896
    .end local v5  # "sourceUserId":I
    .end local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33  # "eventType":I
    .end local v34  # "elapsedNow":J
    .restart local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11  # "eventType":I
    .restart local v12  # "elapsedNow":J
    .restart local v18  # "sourceUserId":I
    :cond_2e6
    move-object/from16 v32, v9

    move/from16 v33, v11

    move-wide/from16 v34, v12

    move/from16 v5, v18

    const/4 v14, 0x2

    .end local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11  # "eventType":I
    .end local v12  # "elapsedNow":J
    .end local v18  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v33  # "eventType":I
    .restart local v34  # "elapsedNow":J
    move-object/from16 v8, p0

    const-wide/16 v4, 0x0

    goto/16 :goto_1f1

    .line 878
    .end local v1  # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5  # "sourceUserId":I
    .end local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33  # "eventType":I
    .end local v34  # "elapsedNow":J
    .restart local v8  # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11  # "eventType":I
    .restart local v12  # "elapsedNow":J
    .restart local v18  # "sourceUserId":I
    :catch_2f5
    move-exception v0

    move-object/from16 v32, v9

    move-wide/from16 v34, v12

    move/from16 v5, v18

    .line 879
    .end local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12  # "elapsedNow":J
    .end local v18  # "sourceUserId":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v5  # "sourceUserId":I
    .restart local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v34  # "elapsedNow":J
    :goto_2fc
    const-string v1, "Error reading job execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v1, 0x0

    return-object v1

    .line 883
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v5  # "sourceUserId":I
    .end local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v34  # "elapsedNow":J
    .restart local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12  # "elapsedNow":J
    .restart local v18  # "sourceUserId":I
    :cond_303
    move-object/from16 v32, v9

    move-wide/from16 v34, v12

    move/from16 v5, v18

    .end local v9  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12  # "elapsedNow":J
    .end local v18  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v34  # "elapsedNow":J
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_327

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_327
    const/4 v1, 0x0

    return-object v1

    .line 825
    .end local v5  # "sourceUserId":I
    .end local v8  # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v28  # "internalFlags":I
    .end local v32  # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v34  # "elapsedNow":J
    .local v4, "internalFlags":I
    .restart local v13  # "sourceUserId":I
    :catch_329
    move-exception v0

    move/from16 v28, v4

    move v5, v13

    move-object v1, v0

    .end local v4  # "internalFlags":I
    .end local v13  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v28  # "internalFlags":I
    move-object v0, v1

    .line 826
    .restart local v0  # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v1

    if-eqz v1, :cond_33a

    .line 827
    const-string v1, "Error parsing execution time parameters, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_33a
    const/4 v1, 0x0

    return-object v1

    .line 816
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v5  # "sourceUserId":I
    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    .restart local v13  # "sourceUserId":I
    :cond_33c
    move/from16 v25, v0

    move/from16 v28, v4

    move-object v1, v5

    move v0, v12

    move v5, v13

    .end local v4  # "internalFlags":I
    .end local v13  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v28  # "internalFlags":I
    move/from16 v0, v25

    move-object v5, v1

    move-object/from16 v1, p0

    goto/16 :goto_b4

    .line 807
    .end local v5  # "sourceUserId":I
    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    .restart local v13  # "sourceUserId":I
    :catch_34a
    move-exception v0

    move/from16 v28, v4

    move-object v1, v5

    move v5, v13

    move-object v4, v0

    .end local v4  # "internalFlags":I
    .end local v13  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v28  # "internalFlags":I
    move-object v0, v4

    .line 808
    .restart local v0  # "e":Ljava/lang/NumberFormatException;
    const-string v4, "Error reading constraints, skipping."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v1

    .line 800
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v5  # "sourceUserId":I
    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    .restart local v13  # "sourceUserId":I
    :cond_357
    move/from16 v28, v4

    move-object v1, v5

    move v5, v13

    .line 803
    .end local v4  # "internalFlags":I
    .end local v13  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v28  # "internalFlags":I
    :goto_35b
    return-object v1

    .line 798
    .end local v5  # "sourceUserId":I
    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    .restart local v13  # "sourceUserId":I
    :cond_35c
    move/from16 v25, v0

    move/from16 v28, v4

    move v5, v13

    .end local v4  # "internalFlags":I
    .end local v13  # "sourceUserId":I
    .restart local v5  # "sourceUserId":I
    .restart local v28  # "internalFlags":I
    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto/16 :goto_91

    .line 786
    .end local v5  # "sourceUserId":I
    .end local v6  # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7  # "sourcePackageName":Ljava/lang/String;
    .end local v10  # "uid":I
    .end local v11  # "eventType":I
    .end local v21  # "lastSuccessfulRunTime":J
    .end local v23  # "lastFailedRunTime":J
    .end local v27  # "sourceTag":Ljava/lang/String;
    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    :catch_366
    move-exception v0

    move/from16 v28, v4

    .end local v4  # "internalFlags":I
    .restart local v28  # "internalFlags":I
    goto :goto_36b

    .end local v28  # "internalFlags":I
    .restart local v4  # "internalFlags":I
    :catch_36a
    move-exception v0

    .line 787
    .restart local v0  # "e":Ljava/lang/NumberFormatException;
    :goto_36b
    const-string v1, "Error parsing job\'s required fields, skipping"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 648
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    .line 651
    .local v2, "numSyncJobs":I
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 652
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_12} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_12} :catch_7e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_7e
    .catchall {:try_start_3 .. :try_end_12} :catchall_7c

    .line 653
    :try_start_12
    iget-boolean v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 654
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_52

    .line 655
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 656
    .local v6, "now":J
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    .line 657
    .local v8, "am":Landroid/app/IActivityManager;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_52

    .line 658
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 659
    .local v10, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v10, v8}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 660
    iput-wide v6, v10, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 661
    iget-object v11, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 663
    add-int/lit8 v0, v0, 0x1

    .line 664
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_4f

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 666
    invoke-static {v10}, Lcom/android/server/job/JobStore;->access$300(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 667
    add-int/lit8 v2, v2, 0x1

    .line 657
    .end local v10  # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_4f
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 672
    .end local v6  # "now":J
    .end local v8  # "am":Landroid/app/IActivityManager;
    .end local v9  # "i":I
    :cond_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_79

    .line 673
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_7e
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_7e
    .catchall {:try_start_53 .. :try_end_56} :catchall_7c

    .line 681
    .end local v3  # "fis":Ljava/io/FileInputStream;
    .end local v5  # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_ab

    .line 682
    :goto_60
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_ab

    .line 672
    .restart local v3  # "fis":Ljava/io/FileInputStream;
    :catchall_79
    move-exception v5

    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    .end local v0  # "numJobs":I
    .end local v1  # "numSystemJobs":I
    .end local v2  # "numSyncJobs":I
    .end local p0  # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :try_start_7b
    throw v5
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_7c} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_7c} :catch_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7c} :catch_7e
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 681
    .end local v3  # "fis":Ljava/io/FileInputStream;
    .restart local v0  # "numJobs":I
    .restart local v1  # "numSystemJobs":I
    .restart local v2  # "numSyncJobs":I
    .restart local p0  # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_7c
    move-exception v3

    goto :goto_c7

    .line 678
    :catch_7e
    move-exception v3

    .line 679
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7f
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7c

    .line 681
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_ab

    .line 682
    goto :goto_60

    .line 674
    :catch_92
    move-exception v3

    .line 675
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_93
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 676
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_7c

    .line 681
    .end local v3  # "e":Ljava/io/FileNotFoundException;
    :cond_a0
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_ab

    .line 682
    goto :goto_60

    .line 687
    :cond_ab
    :goto_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobStore"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 681
    :goto_c7
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_e9

    .line 682
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v2, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    :cond_e9
    throw v3
.end method
