.class Lcom/meizu/settings/language/FlymeLocalePicker$1;
.super Ljava/lang/Object;
.source "FlymeLocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeLocalePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeLocalePicker;Ljava/util/Locale;)V
    .registers 3

    .line 346
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$1;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeLocalePicker$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$1;->val$locale:Ljava/util/Locale;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeLocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method
