.class public Lcom/android/server/appwidget/WidgetInjector;
.super Ljava/lang/Object;
.source "WidgetInjector.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppWidgetInjector"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appwidget/WidgetInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWidget(Ljava/lang/String;)V
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/android/server/appwidget/WidgetInjector;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWidget :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1a
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->addWidget(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static removeWidget(Ljava/lang/String;)V
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/android/server/appwidget/WidgetInjector;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeWidget :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1b
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->removeWidget(Ljava/lang/String;)V

    .line 38
    return-void
.end method
