.class Lcom/android/systemui/pip/phone/PipMenuActivityController$2;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaActionsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 191
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$600(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    return-void
.end method
