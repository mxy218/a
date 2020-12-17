.class public final Lcom/meizu/systemui/shared/model/LockTaskManager;
.super Ljava/lang/Object;
.source "LockTaskManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final PACKAGE_LIST:Ljava/lang/String; = "packageList"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "recents_lock"

.field public static final RECENT_LOCK_SAVED_APPS:Ljava/lang/String; = "recent_lock_apps"

.field private static mLockTaskManager:Lcom/meizu/systemui/shared/model/LockTaskManager;


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field private mLockedPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "recents_lock"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "packageList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "activity"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method public static getAndCreateManager(Landroid/content/Context;)Lcom/meizu/systemui/shared/model/LockTaskManager;
    .registers 2

    .line 41
    sget-object v0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockTaskManager:Lcom/meizu/systemui/shared/model/LockTaskManager;

    if-nez v0, :cond_f

    .line 42
    new-instance v0, Lcom/meizu/systemui/shared/model/LockTaskManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/meizu/systemui/shared/model/LockTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockTaskManager:Lcom/meizu/systemui/shared/model/LockTaskManager;

    .line 44
    :cond_f
    sget-object p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockTaskManager:Lcom/meizu/systemui/shared/model/LockTaskManager;

    return-object p0
.end method

.method public static getManager()Lcom/meizu/systemui/shared/model/LockTaskManager;
    .registers 1

    .line 48
    sget-object v0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockTaskManager:Lcom/meizu/systemui/shared/model/LockTaskManager;

    return-object v0
.end method

.method private save()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    const-string v2, "packageList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    .line 73
    invoke-static {p0}, Lcom/meizu/systemui/shared/model/LockTaskManager;->translateToRecord(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "recent_lock_apps"

    const/4 v2, -0x3

    .line 72
    invoke-static {v0, v1, p0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method static translateToRecord(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 80
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 83
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_50

    .line 87
    array-length v0, p2

    if-lez v0, :cond_50

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-lock"

    .line 88
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    aget-object p2, p2, v0

    const-string v0, "--all"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_50

    :cond_1a
    const-string p2, "LockTaskManager"

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mLockedPackage: "

    .line 90
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2a

    :cond_4b
    const-string p0, ""

    .line 94
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public lockApp(Ljava/lang/String;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0}, Lcom/meizu/systemui/shared/model/LockTaskManager;->save()V

    return-void
.end method

.method public unlockAllApp()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 67
    invoke-direct {p0}, Lcom/meizu/systemui/shared/model/LockTaskManager;->save()V

    return-void
.end method

.method public unlockApp(Ljava/lang/String;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 62
    invoke-direct {p0}, Lcom/meizu/systemui/shared/model/LockTaskManager;->save()V

    return-void
.end method
