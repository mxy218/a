.class Lcom/meizu/settings/security/FlymeAccessPasswordSettings$2;
.super Ljava/lang/Object;
.source "FlymeAccessPasswordSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->saveApplist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$2;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$2;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmeizu/security/AccessControlManager;

    .line 134
    invoke-virtual {p0}, Lmeizu/security/AccessControlManager;->saveAppList()Z

    return-void
.end method
