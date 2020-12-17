.class Lcom/meizu/settings/home/FlymeDashboardSummary$4;
.super Ljava/lang/Object;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;->setThemeChangedListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$4;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$4;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->onCategoriesChanged()V

    return-void
.end method
