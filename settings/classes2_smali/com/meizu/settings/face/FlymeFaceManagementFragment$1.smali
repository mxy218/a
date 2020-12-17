.class Lcom/meizu/settings/face/FlymeFaceManagementFragment$1;
.super Ljava/lang/Object;
.source "FlymeFaceManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceManagementFragment;->initFaceOpenRaiseUpPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$1;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 111
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$1;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$1;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->access$000(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method
