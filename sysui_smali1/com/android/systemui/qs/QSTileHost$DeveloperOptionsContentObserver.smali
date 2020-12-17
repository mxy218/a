.class Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;
.super Landroid/database/ContentObserver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeveloperOptionsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;)V
    .registers 3

    .line 434
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;->this$0:Lcom/android/systemui/qs/QSTileHost;

    .line 435
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 441
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->access$000(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/tuner/TunerService;

    move-result-object p1

    const-string/jumbo v0, "sysui_qs_tiles"

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 442
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSTileHost;->access$102(Lcom/android/systemui/qs/QSTileHost;Z)Z

    .line 443
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "development_settings_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleValueChanged: DEVELOPER_OPTION changed, new value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileHost"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
