.class Lcom/meizu/settings/utils/FlymeAccountHelper$1;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$1;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 112
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$1;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p2}, Lcom/meizu/account/validate/IMzAccountBusiness$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/account/validate/IMzAccountBusiness;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$002(Lcom/meizu/settings/utils/FlymeAccountHelper;Lcom/meizu/account/validate/IMzAccountBusiness;)Lcom/meizu/account/validate/IMzAccountBusiness;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected mBusiness = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$1;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p2}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$000(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/account/validate/IMzAccountBusiness;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlymeAccountHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$1;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$100(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$1;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$002(Lcom/meizu/settings/utils/FlymeAccountHelper;Lcom/meizu/account/validate/IMzAccountBusiness;)Lcom/meizu/account/validate/IMzAccountBusiness;

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeAccountHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
