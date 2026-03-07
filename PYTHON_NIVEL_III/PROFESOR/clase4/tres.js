const sl = document.querySelector.bind(document);
const internals = {};

// Función para inicializar elementos por ID
internals.setElements = (prefix, array) => {
    array.forEach((p) => {
        const id = `${prefix}${p}`;
        internals[id] = sl(`#${id}`);
    });
};

// Inicialización de componentes
internals.svgRoot = sl('svg');
internals.wave = sl('#wave');
// ... Inicializar el resto de componentes como en el script original ...

// Lógica para crear la onda de vapor
const createVaporWave = (svg, wave) => {
    const height = 56;
    const segments = 8;
    const interval = height / segments;

    for (let i = 0; i <= segments; i++) {
        const point = wave.points.appendItem(svg.createSVGPoint());
        point.x = 2; // amplitud / 2
        point.y = i * interval;
        TweenMax.to(point, 0.5, { x: -point.x, repeat: -1, yoyo: true }).progress(i / segments);
    }
};

// Ejecución
createVaporWave(internals.svgRoot, internals.wave);

// Timeline Principal
internals.tl = new TimelineMax({ repeat: -1 });
// Aquí se añaden todas las funciones getTimeline...() definidas en tu código original