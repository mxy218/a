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

.field headsUp:I

.field importance:I

.field lockedAppFields:I

.field maxPriority:Z

.field oemLockedImportance:Z

.field pkg:Ljava/lang/String;

.field priority:I

.field remind:Z

.field showBadge:I

.field uid:I

.field userFilter:I

.field visibility:I


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2030
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2031
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 2032
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 2033
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 2034
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:I

    .line 2035
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 2036
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 2039
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 2040
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    .line 2041
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 2043
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 2044
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 2045
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 2048
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->headsUp:I

    .line 2049
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->remind:Z

    .line 2050
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->maxPriority:Z

    .line 2053
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userFilter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/PreferencesHelper$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/notification/PreferencesHelper$1;

    .line 2028
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDelegate(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2057
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper$Delegate;->isAllowed(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
