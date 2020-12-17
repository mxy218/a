.class Lcom/meizu/settings/deviceinfo/FlymeMemory$7;
.super Ljava/lang/Object;
.source "FlymeMemory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeMemory;->showInstallReplacementAssistantDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeMemory;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 599
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeMemory;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string p1, "com.meizu.datamigration"

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->installAppFromMzStore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
