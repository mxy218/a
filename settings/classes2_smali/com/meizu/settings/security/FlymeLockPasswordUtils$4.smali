.class Lcom/meizu/settings/security/FlymeLockPasswordUtils$4;
.super Ljava/lang/Object;
.source "FlymeLockPasswordUtils.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenPasswordVerifiedToken(Ljava/lang/String;JLcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field final synthetic val$callback:Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V
    .registers 3

    .line 944
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$4;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$4;->val$callback:Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .registers 3

    .line 947
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$4;->val$callback:Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;

    if-eqz p0, :cond_7

    .line 948
    invoke-interface {p0, p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;->onVerified([BI)V

    :cond_7
    return-void
.end method
