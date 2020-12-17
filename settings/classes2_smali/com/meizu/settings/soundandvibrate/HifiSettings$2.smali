.class Lcom/meizu/settings/soundandvibrate/HifiSettings$2;
.super Ljava/util/TimerTask;
.source "HifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/soundandvibrate/HifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$2;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$2;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->access$402(Lcom/meizu/settings/soundandvibrate/HifiSettings;Z)Z

    return-void
.end method
