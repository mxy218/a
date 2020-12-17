.class public Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;
.super Ljava/lang/Object;
.source "FlymeThemeController.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;,
        Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mViewTypeFaceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    .line 36
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mContext:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.meizu.font.change"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.meizu.theme.change"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method public addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isHandle(Landroid/view/ViewGroup;)Z
    .registers 2

    .line 24
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeViewGroup(Landroid/view/ViewGroup;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
