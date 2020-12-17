.class Lcom/meizu/settings/scheduledpower/ShutdownService$2;
.super Ljava/lang/Object;
.source "ShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/scheduledpower/ShutdownService;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;


# direct methods
.method constructor <init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$2;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 140
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$2;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->shutdown(Landroid/content/Context;)V

    .line 141
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$2;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
