.class Lcom/android/server/policy/PhoneWindowManager$11;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .registers 4

    .line 4028
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$11;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 5

    .line 4031
    if-eqz p1, :cond_c

    .line 4032
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->val$displayId:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->val$awakenFromDreams:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    .line 4034
    :cond_c
    return-void
.end method
