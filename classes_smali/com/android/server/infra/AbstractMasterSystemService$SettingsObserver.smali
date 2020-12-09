.class final Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/infra/AbstractMasterSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V
    .registers 6

    .line 959
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 960
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 961
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 962
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    .line 963
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 964
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 967
    :cond_1c
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    invoke-virtual {p1, p2, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 970
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    .line 974
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange(): uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_27
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 976
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    .line 977
    const-string/jumbo p2, "user_setup_complete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    goto :goto_47

    .line 982
    :cond_41
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onSettingsChanged(ILjava/lang/String;)V

    goto :goto_52

    .line 978
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 979
    :try_start_4c
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 980
    monitor-exit p1

    .line 984
    :goto_52
    return-void

    .line 980
    :catchall_53
    move-exception p2

    monitor-exit p1
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_53

    throw p2
.end method
