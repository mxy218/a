.class Lcom/android/server/hips/security/PasswordMode$1;
.super Landroid/database/ContentObserver;
.source "PasswordMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/security/PasswordMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/security/PasswordMode;


# direct methods
.method constructor <init>(Lcom/android/server/hips/security/PasswordMode;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/hips/security/PasswordMode;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/android/server/hips/security/PasswordMode$1;->this$0:Lcom/android/server/hips/security/PasswordMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "change"  # Z

    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/server/hips/security/PasswordMode$1;->this$0:Lcom/android/server/hips/security/PasswordMode;

    invoke-static {v0}, Lcom/android/server/hips/security/PasswordMode;->access$100(Lcom/android/server/hips/security/PasswordMode;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hips/security/PasswordMode;->access$002(Lcom/android/server/hips/security/PasswordMode;I)I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/hips/security/PasswordMode$1;->this$0:Lcom/android/server/hips/security/PasswordMode;

    invoke-static {v1}, Lcom/android/server/hips/security/PasswordMode;->access$000(Lcom/android/server/hips/security/PasswordMode;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const-string v1, "0"

    goto :goto_1f

    :cond_1d
    const-string v1, "1"

    :goto_1f
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "click_password_protection"

    invoke-static {v1, v0}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange, update the security keyboard switch state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v3, p0, Lcom/android/server/hips/security/PasswordMode$1;->this$0:Lcom/android/server/hips/security/PasswordMode;

    invoke-static {v3}, Lcom/android/server/hips/security/PasswordMode;->access$000(Lcom/android/server/hips/security/PasswordMode;)I

    move-result v3

    if-ne v3, v2, :cond_41

    const-string/jumbo v2, "on"

    goto :goto_44

    :cond_41
    const-string/jumbo v2, "off"

    :goto_44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "PasswordMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
