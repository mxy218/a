.class Lcom/android/server/appbinding/AppBindingService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 229
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 230
    const-string v1, "AppBindingService"

    if-ne v0, p1, :cond_21

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain user handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 237
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 238
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p1, v0}, Lcom/android/server/appbinding/AppBindingService;->access$600(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 239
    return-void

    .line 242
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    .line 244
    :cond_3e
    const/4 v2, 0x0

    .line 245
    :goto_3f
    if-nez v2, :cond_56

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain package name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_56
    const/4 v1, 0x0

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 252
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x5c1076e2

    if-eq v4, v5, :cond_68

    :cond_67
    goto :goto_71

    :cond_68
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_72

    :goto_71
    move v1, v3

    :goto_72
    if-eqz v1, :cond_75

    goto :goto_7c

    .line 254
    :cond_75
    if-eqz p2, :cond_7c

    .line 255
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p1, v2, v0}, Lcom/android/server/appbinding/AppBindingService;->access$700(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    .line 259
    :cond_7c
    :goto_7c
    return-void
.end method
