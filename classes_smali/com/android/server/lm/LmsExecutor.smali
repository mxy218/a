.class public Lcom/android/server/lm/LmsExecutor;
.super Ljava/lang/Object;
.source "LmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lm/LmsExecutor$LazyHolder;
    }
.end annotation


# static fields
.field private static final REMOVE_UPDATES:I = 0x1

.field private static final RESTORE_UPDATES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LmsExecutor"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLms:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lm/LmsExecutor;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/lm/LmsExecutor;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/lm/LmsExecutor;->removeUpdatesForPowerSaveInner(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lm/LmsExecutor;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/lm/LmsExecutor;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/lm/LmsExecutor;->restoreUpdatesForPowerSaveInner(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/lm/LmsExecutor;
    .registers 1

    .line 45
    invoke-static {}, Lcom/android/server/lm/LmsExecutor$LazyHolder;->access$000()Lcom/android/server/lm/LmsExecutor;

    move-result-object v0

    return-object v0
.end method

.method private removeUpdatesForPowerSaveInner(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 73
    iget-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mLms:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_5

    return-void

    .line 74
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 75
    :cond_c
    if-nez p2, :cond_f

    .line 76
    return-void

    .line 79
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mLms:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationManagerService;->removeUpdatesForPowerSave(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    .line 83
    goto :goto_30

    .line 80
    :catch_15
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUpdatesForPowerSaveInner: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LmsExecutor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method private restoreUpdatesForPowerSaveInner(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 96
    iget-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mLms:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_5

    return-void

    .line 97
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 98
    :cond_c
    if-nez p2, :cond_f

    .line 99
    return-void

    .line 102
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mLms:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationManagerService;->restoreUpdatesForPowerSave(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    .line 105
    goto :goto_2d

    .line 103
    :catch_15
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUpdatesForPowerSaveInner: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LmsExecutor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method


# virtual methods
.method public getPowerSavedPackagesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mLms:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 118
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->getPowerSavedPackagesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/android/server/LocationManagerService;)V
    .registers 4
    .param p1, "lms"  # Lcom/android/server/LocationManagerService;

    .line 49
    iput-object p1, p0, Lcom/android/server/lm/LmsExecutor;->mLms:Lcom/android/server/LocationManagerService;

    .line 50
    new-instance v0, Lcom/android/server/lm/LmsExecutor$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/lm/LmsExecutor$1;-><init>(Lcom/android/server/lm/LmsExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lm/LmsExecutor;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public removeUpdatesForPowerSave(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 88
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 92
    iget-object v1, p0, Lcom/android/server/lm/LmsExecutor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    return-void
.end method

.method public restoreUpdatesForPowerSave(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 109
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 113
    iget-object v1, p0, Lcom/android/server/lm/LmsExecutor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void
.end method
