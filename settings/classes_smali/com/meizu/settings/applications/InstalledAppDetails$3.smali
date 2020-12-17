.class Lcom/meizu/settings/applications/InstalledAppDetails$3;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
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

    .line 1654
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$3;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_10

    .line 1664
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$3;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->disableAppClone(Ljava/lang/String;)Z

    :cond_10
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
