.class Lcom/android/settings/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2

    .line 1409
    iput-object p1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1412
    iget-object p0, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {p0, p2}, Lcom/android/settings/RadioInfo;->setImsVolteProvisionedState(Z)V

    return-void
.end method
