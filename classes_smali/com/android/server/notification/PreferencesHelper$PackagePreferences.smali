.class Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackagePreferences"
.end annotation


# instance fields
.field allowBubble:Z

.field channels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field defaultAppLockedImportance:Z

.field delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

.field futureOemLockedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field importance:I

.field lockedAppFields:I

.field oemLockedImportance:Z

.field pkg:Ljava/lang/String;

.field priority:I

.field showBadge:Z

.field soundTimeout:J

.field uid:I

.field visibility:I


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1920
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 1921
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1922
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1923
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 1925
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 1926
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1927
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->soundTimeout:J

    .line 1930
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 1931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    .line 1932
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1935
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1936
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/PreferencesHelper$1;)V
    .registers 2

    .line 1918
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDelegate(Ljava/lang/String;I)Z
    .registers 4

    .line 1939
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper$Delegate;->isAllowed(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
