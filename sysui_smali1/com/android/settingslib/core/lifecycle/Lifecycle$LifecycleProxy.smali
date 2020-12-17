.class Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# virtual methods
.method public onLifecycleEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 214
    sget-object p1, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_32

    goto :goto_31

    :pswitch_c  #0x7
    const-string p0, "LifecycleObserver"

    const-string p1, "Should not receive an \'ANY\' event!"

    .line 234
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 231
    :pswitch_14  #0x6
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_31

    .line 228
    :pswitch_1a  #0x5
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_31

    .line 225
    :pswitch_20  #0x4
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_31

    .line 222
    :pswitch_26  #0x3
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_31

    .line 219
    :pswitch_2c  #0x2
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :goto_31
    :pswitch_31  #0x1
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2c  #00000002
        :pswitch_26  #00000003
        :pswitch_20  #00000004
        :pswitch_1a  #00000005
        :pswitch_14  #00000006
        :pswitch_c  #00000007
    .end packed-switch
.end method
