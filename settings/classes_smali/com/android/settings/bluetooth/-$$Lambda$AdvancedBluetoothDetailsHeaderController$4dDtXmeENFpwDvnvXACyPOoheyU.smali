.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$4dDtXmeENFpwDvnvXACyPOoheyU;->f$2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$1$AdvancedBluetoothDetailsHeaderController(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
