.class Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$5;
.super Ljava/lang/Object;
.source "FlymeServiceDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->safeOnBack(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V
    .registers 2

    .line 796
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$5;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 800
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$5;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
