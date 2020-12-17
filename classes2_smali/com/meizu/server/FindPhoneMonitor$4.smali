.class Lcom/meizu/server/FindPhoneMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->registerPackageChangedRecever()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 173
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$4;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 176
    if-nez p2, :cond_3

    .line 177
    return-void

    .line 179
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_a

    .line 181
    return-void

    .line 183
    :cond_a
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/meizu/server/FindPhoneMonitor;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 185
    .local v3, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    iget-object v4, v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageChanged.pkgName == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->access$900(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/meizu/server/FindPhoneMonitor$4;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->access$700(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v2, p0, Lcom/meizu/server/FindPhoneMonitor$4;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->access$700(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    goto :goto_55

    .line 191
    .end local v3  # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    :cond_54
    goto :goto_16

    .line 192
    :cond_55
    :goto_55
    return-void
.end method
