.class public final Lcom/meizu/systemui/shared/model/SecretTaskManager;
.super Ljava/lang/Object;
.source "SecretTaskManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.safe.alphame.provider"

.field private static final PACKAGE_LIST:Ljava/lang/String; = "packageList"

.field private static final PACKAGE_LIST_UNSECRET:Ljava/lang/String; = "packageList_unsecret"

.field public static final PAY_APP_LIST_UPDATE:Ljava/lang/String; = "com.meizu.safe.alphame.pure.UPDATE_FINISHED"

.field private static final PREFERENCES_FOR_ALPHAME:Ljava/lang/String; = "recents_secret_alphame"

.field private static final PREFERENCES_FOR_SECRET:Ljava/lang/String; = "recents_secret"

.field public static final TABLE_NAME:Ljava/lang/String; = "GameModeList"

.field private static final TAG:Ljava/lang/String; = "SecretTaskManager"

.field public static final URI:Landroid/net/Uri;

.field private static mSecretTaskManager:Lcom/meizu/systemui/shared/model/SecretTaskManager;


# instance fields
.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

.field private mPayAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mPayApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUnSecretPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.meizu.safe.alphame.provider/GameModeList"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/meizu/systemui/shared/model/SecretTaskManager$2;

    invoke-direct {v0, p0}, Lcom/meizu/systemui/shared/model/SecretTaskManager$2;-><init>(Lcom/meizu/systemui/shared/model/SecretTaskManager;)V

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    const-string v1, "recents_secret"

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    iget-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "packageList"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    .line 52
    iget-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v4, "packageList_unsecret"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    const-string v1, "recents_secret_alphame"

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    .line 54
    invoke-static {}, Lmeizu/hips/FlymeHipsServiceManager;->getInstance()Lmeizu/hips/FlymeHipsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    const-string v0, "access_control"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 57
    invoke-virtual {p0, p1}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->updatePayAppList(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.safe.alphame.pure.UPDATE_FINISHED"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/systemui/shared/model/SecretTaskManager;)Ljava/util/HashSet;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/systemui/shared/model/SecretTaskManager;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/systemui/shared/model/SecretTaskManager;)Ljava/util/HashSet;
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->loadSecretList()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getAndCreateManager(Landroid/content/Context;)Lcom/meizu/systemui/shared/model/SecretTaskManager;
    .registers 2

    .line 66
    sget-object v0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretTaskManager:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    if-nez v0, :cond_f

    .line 67
    new-instance v0, Lcom/meizu/systemui/shared/model/SecretTaskManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/meizu/systemui/shared/model/SecretTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretTaskManager:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    .line 69
    :cond_f
    sget-object p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretTaskManager:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    return-object p0
.end method

.method public static getManager()Lcom/meizu/systemui/shared/model/SecretTaskManager;
    .registers 1

    .line 73
    sget-object v0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretTaskManager:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    return-object v0
.end method

.method private loadSecretList()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    :try_start_5
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    invoke-virtual {p0}, Lmeizu/hips/FlymeHipsServiceManager;->getSecurityMarginItems()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 139
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 143
    :cond_25
    sget-object v1, Lcom/meizu/systemui/shared/model/SecretTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSecretList success count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_40

    goto :goto_5c

    :catch_40
    move-exception p0

    .line 145
    sget-object v1, Lcom/meizu/systemui/shared/model/SecretTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSecurityMarginItems, can not update the security margin items!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-object v0
.end method

.method private save()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    const-string v2, "packageList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    const-string v1, "packageList_unsecret"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    if-eqz p2, :cond_aa

    .line 152
    array-length v0, p2

    if-lez v0, :cond_aa

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-secret"

    .line 153
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    aget-object p2, p2, v0

    const-string v0, "--all"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_aa

    :cond_1a
    const-string p2, "SecretTaskManager"

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "PayApps: "

    .line 155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "  "

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2a

    :cond_4b
    const-string p2, ""

    .line 159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SecretPackage: "

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5b

    .line 164
    :cond_7a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "UnSecretPackage: "

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_88
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_88

    .line 169
    :cond_a7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_aa
    return-void
.end method

.method public isSecretivePkg(Ljava/lang/String;)Z
    .registers 6

    const-string v0, ":"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 78
    iget-object v2, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    return v3

    .line 80
    :cond_13
    iget-object v2, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v1

    .line 84
    :cond_1c
    iget-object p1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    monitor-enter p1

    .line 85
    :try_start_1f
    iget-object v2, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 86
    monitor-exit p1

    return v3

    .line 88
    :cond_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_3e

    .line 89
    iget-object p1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-eqz p1, :cond_3d

    .line 90
    invoke-virtual {p1}, Lmeizu/security/AccessControlManager;->getSwitchStatus()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {p0, v0}, Lmeizu/security/AccessControlManager;->isAppProtected(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v3

    :cond_3d
    return v1

    :catchall_3e
    move-exception p0

    .line 88
    :try_start_3f
    monitor-exit p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public keepSecretPkg(Ljava/lang/String;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->save()V

    return-void
.end method

.method public unKeepSecretPkg(Ljava/lang/String;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->save()V

    return-void
.end method

.method public updatePayAppList(Landroid/content/Context;)V
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;-><init>(Lcom/meizu/systemui/shared/model/SecretTaskManager;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
