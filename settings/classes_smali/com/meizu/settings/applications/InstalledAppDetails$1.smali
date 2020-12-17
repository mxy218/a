.class Lcom/meizu/settings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$1;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$1;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 251
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_12

    goto :goto_31

    .line 257
    :cond_12
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$1;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-static {p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$300(Lcom/meizu/settings/applications/InstalledAppDetails;)Lcom/meizu/settings/applications/ApplicationsState;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$1;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$100(Lcom/meizu/settings/applications/InstalledAppDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$1;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$200(Lcom/meizu/settings/applications/InstalledAppDetails;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/meizu/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_31

    .line 253
    :cond_2c
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$1;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$000(Lcom/meizu/settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    :goto_31
    return-void
.end method
