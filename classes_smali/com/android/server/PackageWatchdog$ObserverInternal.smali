.class Lcom/android/server/PackageWatchdog$ObserverInternal;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverInternal"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation
.end field

.field public mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 847
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    .line 848
    invoke-virtual {p0, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 849
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;
    .registers 3

    .line 837
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->prunePackagesLocked(J)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private prunePackagesLocked(J)Ljava/util/Set;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 892
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 893
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 894
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 895
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 896
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v3

    .line 897
    invoke-virtual {v2, p1, p2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->handleElapsedTimeLocked(J)I

    move-result v4

    .line 898
    const/4 v5, 0x3

    if-eq v3, v5, :cond_4a

    if-ne v4, v5, :cond_4a

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed health check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageWatchdog"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_4a
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isExpiredLocked()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 904
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 906
    :cond_53
    goto :goto_f

    .line 907
    :cond_54
    return-object v0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;
    .registers 18

    .line 931
    move-object/from16 v1, p0

    .line 932
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "observer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "name"

    const-string v3, "PackageWatchdog"

    const/4 v4, 0x0

    if-eqz v0, :cond_27

    .line 933
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 935
    const-string v0, "Unable to read observer name"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-object v4

    .line 934
    :cond_25
    move-object v5, v0

    goto :goto_28

    .line 932
    :cond_27
    move-object v5, v4

    .line 939
    :goto_28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 940
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 942
    :cond_31
    :goto_31
    :try_start_31
    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 943
    const-string/jumbo v0, "package"

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_42} :catch_a0
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_42} :catch_a0

    if-eqz v0, :cond_31

    .line 945
    :try_start_44
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 946
    const-string v0, "duration"

    .line 947
    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 948
    const-string v0, "health-check-duration"

    .line 949
    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 951
    const-string/jumbo v0, "passed-health-check"

    .line 952
    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 953
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 954
    new-instance v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v15}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_7b} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_7b} :catch_a0
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_7b} :catch_a0

    .line 960
    :cond_7b
    goto :goto_31

    .line 957
    :catch_7c
    move-exception v0

    .line 958
    :try_start_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping package for observer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_91} :catch_a0
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_91} :catch_a0

    .line 959
    goto :goto_31

    .line 966
    :cond_92
    nop

    .line 967
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 968
    return-object v4

    .line 970
    :cond_9a
    new-instance v0, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-direct {v0, v5, v6}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 963
    :catch_a0
    move-exception v0

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    return-object v4
.end method


# virtual methods
.method public onPackageFailureLocked(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 917
    if-eqz p1, :cond_f

    .line 918
    invoke-virtual {p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->onFailureLocked()Z

    move-result p1

    return p1

    .line 920
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public updatePackagesLocked(Ljava/util/List;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 874
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 875
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 876
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    :cond_19
    return-void
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 858
    const-string/jumbo v0, "observer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    move v3, v1

    :goto_11
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 861
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 862
    invoke-virtual {v4, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 860
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 864
    :cond_27
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2a} :catch_2c

    .line 865
    const/4 p1, 0x1

    return p1

    .line 866
    :catch_2c
    move-exception p1

    .line 867
    const-string v0, "PackageWatchdog"

    const-string v2, "Cannot save observer"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    return v1
.end method
