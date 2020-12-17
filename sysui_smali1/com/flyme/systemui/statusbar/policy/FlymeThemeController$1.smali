.class Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeThemeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.meizu.font.change"

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 41
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->access$000(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->access$000(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {p2, v0, v1}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshThemeFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    goto :goto_1a

    :cond_38
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 46
    invoke-static {}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->clearAppNamesCache()V

    goto :goto_65

    .line 48
    :cond_44
    invoke-static {}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->clearAppCache()V

    .line 49
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->access$000(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 50
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshResource(Landroid/view/ViewGroup;)V

    goto :goto_55

    :cond_65
    :goto_65
    return-void
.end method
