.class Lcom/meizu/server/AccessControlService$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AccessControlService;


# direct methods
.method constructor <init>(Lcom/meizu/server/AccessControlService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/AccessControlService;

    .line 109
    iput-object p1, p0, Lcom/meizu/server/AccessControlService$1;->this$0:Lcom/meizu/server/AccessControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context1"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_30

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "pkgList":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_1c

    .line 116
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 118
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v0

    move-object v1, v4

    .line 121
    .end local v3  # "pkg":Ljava/lang/String;
    :cond_1c
    if-eqz v1, :cond_30

    array-length v3, v1

    if-lez v3, :cond_30

    .line 122
    array-length v3, v1

    :goto_22
    if-ge v0, v3, :cond_30

    aget-object v4, v1, v0

    .line 124
    .local v4, "pkg":Ljava/lang/String;
    :try_start_26
    iget-object v5, p0, Lcom/meizu/server/AccessControlService$1;->this$0:Lcom/meizu/server/AccessControlService;

    invoke-virtual {v5, v4}, Lcom/meizu/server/AccessControlService;->delPackageName(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 126
    goto :goto_2d

    .line 125
    :catch_2c
    move-exception v5

    .line 122
    .end local v4  # "pkg":Ljava/lang/String;
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 130
    .end local v1  # "pkgList":[Ljava/lang/String;
    .end local v2  # "data":Landroid/net/Uri;
    :cond_30
    return-void
.end method
