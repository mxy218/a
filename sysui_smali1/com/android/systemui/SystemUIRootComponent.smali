.class public interface abstract Lcom/android/systemui/SystemUIRootComponent;
.super Ljava/lang/Object;
.source "SystemUIRootComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/android/systemui/DependencyProvider;,
        Lcom/android/systemui/DependencyBinder;,
        Lcom/android/systemui/ServiceBinder;,
        Lcom/android/systemui/SystemUIFactory$ContextHolder;,
        Lcom/android/systemui/SystemUIModule;,
        Lcom/android/systemui/SystemUIDefaultModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
.end method

.method public abstract getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
.end method
