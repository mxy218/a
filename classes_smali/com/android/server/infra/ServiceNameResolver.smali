.class public interface abstract Lcom/android/server/infra/ServiceNameResolver;
.super Ljava/lang/Object;
.source "ServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;
    }
.end annotation


# virtual methods
.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getDefaultServiceName(I)Ljava/lang/String;
.end method

.method public getServiceName(I)Ljava/lang/String;
    .registers 2

    .line 75
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDefaultServiceEnabled(I)Z
    .registers 3

    .line 140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "checking default service not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isTemporary(I)Z
    .registers 2

    .line 82
    const/4 p1, 0x0

    return p1
.end method

.method public resetTemporaryService(I)V
    .registers 3

    .line 108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "temporary user not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .registers 3

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "changing default service not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .registers 2

    .line 56
    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 4

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "temporary user not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
