.class public abstract Lcom/meizu/account/validate/IMzAccountBusiness$Stub;
.super Landroid/os/Binder;
.source "IMzAccountBusiness.java"

# interfaces
.implements Lcom/meizu/account/validate/IMzAccountBusiness;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/account/validate/IMzAccountBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/account/validate/IMzAccountBusiness$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/account/validate/IMzAccountBusiness;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.account.validate.IMzAccountBusiness"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 37
    instance-of v1, v0, Lcom/meizu/account/validate/IMzAccountBusiness;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Lcom/meizu/account/validate/IMzAccountBusiness;

    return-object v0

    .line 40
    :cond_13
    new-instance v0, Lcom/meizu/account/validate/IMzAccountBusiness$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/account/validate/IMzAccountBusiness$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/meizu/account/validate/IMzAccountBusiness;
    .registers 1

    .line 130
    sget-object v0, Lcom/meizu/account/validate/IMzAccountBusiness$Stub$Proxy;->sDefaultImpl:Lcom/meizu/account/validate/IMzAccountBusiness;

    return-object v0
.end method
