.class Lcom/meizu/settings/applications/ExternalSourcesDetails$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalSourcesDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ExternalSourcesDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ExternalSourcesDetails;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;->this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object p2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;->this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-static {p2}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->access$000(Lcom/meizu/settings/applications/ExternalSourcesDetails;)Z

    move-result p2

    if-nez p2, :cond_37

    iget-object p2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;->this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-static {p2}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->access$100(Lcom/meizu/settings/applications/ExternalSourcesDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p2

    if-eqz p2, :cond_32

    iget-object p2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;->this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-static {p2}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->access$100(Lcom/meizu/settings/applications/ExternalSourcesDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_32

    iget-object p2, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;->this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;

    .line 340
    invoke-static {p2}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->access$100(Lcom/meizu/settings/applications/ExternalSourcesDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 341
    :cond_32
    iget-object p0, p0, Lcom/meizu/settings/applications/ExternalSourcesDetails$1;->this$0:Lcom/meizu/settings/applications/ExternalSourcesDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->access$200(Lcom/meizu/settings/applications/ExternalSourcesDetails;)V

    :cond_37
    return-void
.end method
