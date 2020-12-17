.class public Lcom/android/systemui/tuner/TunerServiceImpl;
.super Lcom/android/systemui/tuner/TunerService;
.source "TunerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerServiceImpl$Observer;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final RESET_BLACKLIST:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

.field private final mTunableLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTunables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "sysui_qs_tiles"

    const-string v1, "doze_always_on"

    .line 63
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;)V
    .registers 7
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    .line 68
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    .line 74
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 91
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 92
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    const/4 p3, 0x0

    const-string/jumbo v0, "sysui_tuner_version"

    .line 93
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3f

    .line 94
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result p3

    invoke-direct {p0, p3, v2, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->upgradeTuner(IILandroid/os/Handler;)V

    goto :goto_3f

    .line 98
    :cond_68
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 99
    new-instance p1, Lcom/android/systemui/tuner/TunerServiceImpl$1;

    iget-object p2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl$1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 107
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/tuner/TunerServiceImpl;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/tuner/TunerServiceImpl;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/net/Uri;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadSetting(Landroid/net/Uri;)V

    return-void
.end method

.method private addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V
    .registers 8

    .line 178
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 179
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_2f

    .line 183
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    const-string v2, "TunerService.mTunables"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakDetector;->trackCollection(Ljava/util/Collection;Ljava/lang/String;)V

    .line 186
    :cond_2f
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 188
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    :cond_4a
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-interface {p1, p2, p0}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reloadAll()V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 233
    invoke-interface {v4, v1, v2}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method private reloadSetting(Landroid/net/Uri;)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_13

    return-void

    .line 222
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v1, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 224
    invoke-interface {v1, p1, p0}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method private upgradeTuner(IILandroid/os/Handler;)V
    .registers 8

    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    const-string v0, "icon_blacklist"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 120
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    const-string v2, "rotate"

    .line 122
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "headset"

    .line 123
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, ","

    .line 127
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 125
    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_26
    const/4 v0, 0x2

    if-ge p1, v0, :cond_2f

    .line 131
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    :cond_2f
    const/4 v0, 0x4

    if-ge p1, v0, :cond_3e

    .line 136
    iget p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 137
    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;I)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3e
    const-string/jumbo p1, "sysui_tuner_version"

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->setValue(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .registers 6

    .line 172
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    .line 173
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public clearAll()V
    .registers 2

    .line 240
    iget v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->clearAllFromUser(I)V

    return-void
.end method

.method public clearAllFromUser(I)V
    .registers 6

    .line 245
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "sysui_demo_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.demo"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    const-string v3, "exit"

    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    sget-object v3, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_BLACKLIST:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_26

    .line 254
    :cond_3b
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_26

    :cond_41
    return-void
.end method

.method public getValue(Ljava/lang/String;I)I
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$upgradeTuner$0$TunerServiceImpl(I)V
    .registers 2

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->clearAllFromUser(I)V

    return-void
.end method

.method public removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 199
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 201
    :cond_1a
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_23

    .line 202
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_23
    return-void
.end method

.method protected reregisterAll()V
    .registers 7

    .line 207
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 212
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1a

    :cond_31
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
