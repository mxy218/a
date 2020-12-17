.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;
.super Ljava/lang/Object;
.source "FlymeEraseSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->showDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;I)V
    .registers 3

    .line 308
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    iput p2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 310
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    iget p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$3;->val$action:I

    invoke-static {p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$700(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;I)V

    return-void
.end method
